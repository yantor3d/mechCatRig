"""cmpt.py 

Imports and renames rig components.
"""

import os 

from maya import cmds


def depthInHierarchy(node):
    return node.count('|')
    

def partialPathName(node):    
    return node.rsplit('|', 1)[-1]
    
    
def nodeName(node):    
    namespace, name = node.rsplit(':', 1)
    name = partialPathName(name)
    
    return name
    

def componentFile(cmpt):
    """Return the filepath of the component.
    
    :parameters:
        cmpt : str
            Name of the component (eg, 'leg')
            
    :rtype: str 
    """
    
    root_dir = cmds.workspace(q=True, rd=True)
    cmpt_dir = os.path.join(root_dir, 'components')
    cmpt_file = os.path.join(cmpt_dir, "{}.ma".format(cmpt))
    
    return cmpt_file
    
    
def importComponent(cmpt, name):   
    """Load the specified component into the current scene and renames its nodes.
    
    :parameters:
        cmpt : str
            Name of the component (eg, 'leg')
        name : str
            Unique name for the component to distinguish it from other 
            instances of the same component (eg, 'leg_LF')
    """
    
    cmpt_file = componentFile(cmpt)
    
    if cmds.namespace(exists='tmp'):
        cmds.namespace(rm='tmp')  
        
    cmds.file(cmpt_file, i=True, namespace="tmp")

    cmpt_dag_nodes = cmds.ls("tmp:*", dag=True, long=True)
    
    for node in sorted(cmpt_dag_nodes, key=depthInHierarchy, reverse=True):
        if not cmds.objExists(node):
            continue
        
        d = depthInHierarchy(node)     
        nm = nodeName(node)
            
        pathParts = node.split('|')[1:]
        nameParts = nm.split('_')
                
        if d == 1:
            try:
                i = nameParts.index(cmpt)
                nameParts[i] = name
            except IndexError:
                pass
        elif d == 2:
            pass 
        elif (
               pathParts[1] == 'tmp:control' 
            or pathParts[1] == 'tmp:guides'
        ):
            if nameParts[0] == cmpt:
                nameParts[0] = name
            else:
                nameParts.insert(0, name)
                        
        niceName = '_'.join([p for p in nameParts if p])
        
        cmds.rename(node, niceName)
    
    ns = name
    
    if not cmds.namespace(exists=ns):
        cmds.namespace(add=ns)
        
    cmds.namespace(mv=['tmp', ns])
    cmds.namespace(rm='tmp')