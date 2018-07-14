# maya_api_utils.py
# Shared utilities for dealing with the Maya API

from maya.api import OpenMaya


def find_node_by_name(cmpt_name):
    """Return the component top node.

    Parameters
    ----------
        cmpt_name : str
            Name of the rig component or its container

    Returns
    -------
        maya.api.OpenMaya.MObject
            Rig component top node
    """

    sel = OpenMaya.MSelectionList()

    try:
        sel.add(cmpt_name)
    except RuntimeError:
        result = OpenMaya.MObject.kNullObj
    else:
        result = sel.getDependNode(0)

    return result


def node_short_name(node):
    """Return the short name of the given node.

    Parameters
    ----------
    node : maya.api.OpenMaya.MObject
        A DAG or DG node in the current scene.

    Returns
    -------
    str
        Name of the node.
    """

    if node.isNull():
        return ''

    if node.hasFn(OpenMaya.MFn.kDagNode):
        return OpenMaya.MFnDagNode(node).name()
    else:
        return OpenMaya.MFnDependencyNode(node).name()


def node_long_name(node):
    """Return the full name of the given node.

    Parameters
    ----------
    node : maya.api.OpenMaya.MObject
        A DAG or DG node in the current scene.

    Returns
    -------
    str
        Long name of the node.
    """

    if node.isNull():
        return ''

    if node.hasFn(OpenMaya.MFn.kDagNode):
        return OpenMaya.MDagPath.getAPathTo(node).fullPathName()
    else:
        return OpenMaya.MFnDependencyNode(node).name()


def plug_long_name(plug, **kwargs):
    """Return the full name of the plug.

    Parameters
    ----------
    plug : maya.api.OpenMaya.MPlug
        An attribute in the current scene.

    Returns
    -------
    str
        Long name of the plug.
    """

    if plug.isNull:
        return ''

    return '{}.{}'.format(
        node_long_name(plug.node()),
        plug.partialName(**kwargs)
    )