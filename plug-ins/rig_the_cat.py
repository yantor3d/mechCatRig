# rig_the_cat.py
# Commands for working with the MechaCat rig components

import json
import sys

from maya import cmds
from maya.api import OpenMaya


def maya_useNewAPI():
    pass


def iter_dag(root):
    """Iterate over the DAG hierarchy from `root`, depth first.

    Parameters
    ----------
    root : maya.api.OpenMaya.MObject
        A DAG or DG node in the current scene.

    Yields
    -------
    maya.api.OpenMaya.MObject
        The next DAG object in the hierarchy.
    """

    # maya.api.OpenMaya.MItDag is missing in 2016

    def _iter_children(node):
        fn_dag = OpenMaya.MFnDagNode(node)

        yield node

        for i in xrange(fn_dag.childCount()):
            for child_obj in _iter_children(fn_dag.child(i)):
                if child_obj.hasFn(OpenMaya.MFn.kTransform):
                    yield child_obj

    if not root.isNull():
        children = _iter_children(root)
        next(children)

        for child in children:
            yield child


def iter_asset(container):
    """Iterate over the members of `container`.

    Parameters
    ----------
    container : maya.api.OpenMaya.MObject
        A dagContainer node.

    Yields
    -------
    maya.api.OpenMaya.MObject
        The next node in the container.
    """

    # maya.api.OpenMaya.MFnContainerNode is missing in 2016

    asset_name = node_long_name(container)
    component_nodes = cmds.container(asset_name, query=True, nodeList=True)

    sel = OpenMaya.MSelectionList()
    sel.add(container)

    for node in component_nodes:
        sel.add(node)

    for i in xrange(sel.length()):
        yield sel.getDependNode(i)


def find_cmpt_node(cmpt, node_name):
    """Return the top-level component node of the given name.

    Parameters
    ----------
    cmpt : maya.api.OpenMaya.MObject
        A rig component top node.
    node_name : str
        Name of the top-level component. For example, 'guides'

    Returns
    -------
    maya.api.OpenMaya.MObject
        The top level component node.
    """

    result = OpenMaya.MObject.kNullObj

    fn_dag = OpenMaya.MFnDagNode(cmpt)

    for i in xrange(fn_dag.childCount()):
        child = fn_dag.child(i)

        if node_short_name(child) == node_name:
            result = child
            break

    return result


def get_cmpt_by_name(cmpt_name):
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


class ParseArgumentError(RuntimeError):
    pass

class ArgumentParser(object):
    """Convienence methods for parsing Maya command arguments.

    Parameters
    ----------
    args_data : maya.api.OpenMaya.MArgsDatabase
        Arguments for the command.
    cmd_name : str
        Name of the command to which the arguments were passed.
    """

    def __init__(self, args_data, cmd_name):
        self._args_data = args_data
        self._cmd_name = cmd_name

    def _get_flag_arg(self, type_, flag, long_flag, default=None, is_required=False):
        if type_ is int:
            get_func = self._args_data.flagArgumentInt
        elif type_ is str:
            get_func = self._args_data.flagArgumentString
        else:
            raise TypeError("Unsupported type: {}".format(type_.__name__))

        if self._args_data.isFlagSet(flag):
            result = get_func(flag, 0)
        elif is_required:
            raise LookupError(
                "The {}/{} flag is required by the {} command.".format(
                    flag, long_flag or flag, self._cmd_name
                )
            )
        else:
            result = default

        return result

    def get_int(self, flag, long_flag=None, default=None, is_required=False):
        """Returns the int value passed to the given flag.

        Parameters
        ----------
            flag : str
                Short name of the flag
            long_flag : str
                Long name of the flag
            default : any
                Default value returned if the flag is not set.
            is_required : bool
                If True, raise an error if the flag is not set.
                Otherwise, return the default value.

        Returns
        -------
            int
                Value passed to the flag

        Raises
        ------
            LookupError
                If the flag is not set and `is_required` is True.
        """

        return self._get_flag_arg(int, flag, long_flag, default, is_required)

    def get_string(self, flag, long_flag=None, default=None, is_required=False):
        """Returns the string passed to the given flag.

        Parameters
        ----------
            flag : str
                Short name of the flag
            long_flag : str
                Long name of the flag
            default : any
                Default value returned if the flag is not set.
            is_required : bool
                If True, raise an error if the flag is not set.
                Otherwise, return the default value.

        Returns
        -------
            str
                Value passed to the flag

        Raises
        ------
            LookupError
                If the flag is not set and `is_required` is True.
        """

        return self._get_flag_arg(str, flag, long_flag, default, is_required)

    def get_selected_components(self):
        """Returns the selected components.

        Returns
        -------
            list
                List of the selected components as `maya.api.OpenMaya.MObject`

        Raises
        ------
            LookupError
                If no components are selected.
        """

        result = []

        try:
            selected_objects = self._args_data.getObjectList()
        except RuntimeError:
            selected_objects = OpenMaya.MSelectionList()

        for i in xrange(selected_objects.length()):
            cmpt = selected_objects.getDependNode(i)

            if not cmpt.isNull():
                result.append(cmpt)

        if not result:
            raise LookupError(
                'Nothing selected. '
                'Select at least one component and try again.'
            )

        return result


class BaseComponentGuidesCommand(OpenMaya.MPxCommand):
    """Base command for toggling component guides."""

    command_name = 'cmptGuide'

    def __init__(self):
        super(BaseComponentGuidesCommand, self).__init__()

        self.selected_components = []
        self.connections = []

    @staticmethod
    def get_syntax():
        syntax = OpenMaya.MSyntax()

        syntax.setObjectType(OpenMaya.MSyntax.kSelectionList)
        syntax.useSelectionAsDefault(True)

        return syntax

    def hasSyntax(self):
        return True

    def isUndoable(self):
        return True

    def doIt(self, args_list):
        args_data = OpenMaya.MArgDatabase(self.syntax(), args_list)

        arg_parser = ArgumentParser(args_data, self.command_name)

        try:
            self.selected_components = arg_parser.get_selected_components()
        except LookupError as e:
            self.displayError(str(e))
            return

        self.redoIt()

    def redoIt(self):
        for cmpt in self.selected_components:
            for node in iter_dag(find_cmpt_node(cmpt, 'input')):
                connections = self.workIt(node)

                if connections:
                    self.connections.extend(connections)

    def doWork(self, src_attr, dest_attr):
        return None

    def workIt(self, input_mObj):
        connections = []

        input_fnNode = OpenMaya.MFnDependencyNode(input_mObj)

        if not input_fnNode.hasAttribute('guideData'):
            return connections

        guide_data_plug = input_fnNode.findPlug('guideData', True)
        guide_attr_attr = input_fnNode.findPlug('guide_attr', True).attribute()

        guide_attr_plug_array = guide_data_plug.child(guide_attr_attr)

        guide_attr_plug_indices = guide_attr_plug_array.getExistingArrayAttributeIndices()

        for i in guide_attr_plug_indices:
            guide_attr_plug = guide_attr_plug_array.elementByLogicalIndex(i)
            guide_attr_connections = guide_attr_plug.connectedTo(True, False)

            try:
                guide_plug = guide_attr_connections[0]
            except IndexError:
                continue

            guide_attr = guide_plug.attribute()
            attr_name =  OpenMaya.MFnAttribute(guide_attr).name

            if not input_fnNode.hasAttribute(attr_name):
                continue

            input_plug = input_fnNode.findPlug(attr_name, True)

            src_attr = plug_long_name(guide_plug)
            dest_attr = plug_long_name(input_plug)

            conn = self.doWork(src_attr, dest_attr)

            if conn:
                connections.append(conn)

        return connections

    def undoWork(self, src_attr, dest_attr):
        pass

    def undoIt(self):
        for src_attr, dest_attr in self.connections:
            self.undoWork(src_attr, dest_attr)


class AttachComponentGuidesCommand(BaseComponentGuidesCommand):
    """Command to attach the component guides.

    Usage
    -----
        attachCmptGuide [cmpt...]
    """

    command_name = "attachCmptGuides"

    @staticmethod
    def create():
        return AttachComponentGuidesCommand()

    def doWork(self, src_attr, dest_attr):
        if not cmds.isConnected(src_attr, dest_attr):
            cmds.connectAttr(src_attr, dest_attr, force=True)
            return src_attr, dest_attr

        return None

    def undoWork(self, src_attr, dest_attr):
        if cmds.isConnected(src_attr, dest_attr):
            cmds.disconnectAttr(src_attr, dest_attr)


class DetachComponentGuidesCommand(BaseComponentGuidesCommand):
    """Command to detach the component guides.

    Usage
    -----
        detachCmptGuides [cmpt...]
    """

    command_name = "detachCmptGuides"

    @staticmethod
    def create():
        return DetachComponentGuidesCommand()

    def doWork(self, src_attr, dest_attr):
        result = None

        if cmds.isConnected(src_attr, dest_attr):
            cmds.disconnectAttr(src_attr, dest_attr)

            result = src_attr, dest_attr

        return result

    def undoWork(self, src_attr, dest_attr):
        if not cmds.isConnected(src_attr, dest_attr):
            cmds.connectAttr(src_attr, dest_attr, force=True)


class RenameRigComponentCommand(OpenMaya.MPxCommand):
    """Command for importing a rig component.

    Usage
    -----
        renameCmpt [-alias ""] [-group ""] [-number #] [-padding #] [-prefix ""] [cmpt]
    """

    command_name = 'renameCmpt'

    ALIAS_FLAG = '-a'
    ALIAS_LONG = '-alias'

    GROUP_FLAG = '-g'
    GROUP_LONG = '-group'

    NUMBER_FLAG = '-n'
    NUMBER_LONG = '-number'

    PADDING_FLAG = '-d'
    PADDING_LONG = '-padding'

    PREFIX_FLAG = '-p'
    PREFIX_LONG = '-prefix'

    def __init__(self):
        self.selected_component = None

        self.cmpt_name = None
        self.alias = None
        self.group = None
        self.number = None
        self.padding = None
        self.prefix = None

        self.dg_mod = OpenMaya.MDGModifier()

        super(RenameRigComponentCommand, self).__init__()

    @staticmethod
    def create():
        return RenameRigComponentCommand()

    @staticmethod
    def get_syntax():
        syntax = OpenMaya.MSyntax()

        syntax.setObjectType(OpenMaya.MSyntax.kSelectionList)
        syntax.useSelectionAsDefault(True)

        syntax.addFlag(
            RenameRigComponentCommand.ALIAS_FLAG,
            RenameRigComponentCommand.ALIAS_LONG,
            OpenMaya.MSyntax.kString
        )

        syntax.addFlag(
            RenameRigComponentCommand.GROUP_FLAG,
            RenameRigComponentCommand.GROUP_LONG,
            OpenMaya.MSyntax.kString
        )

        syntax.addFlag(
            RenameRigComponentCommand.NUMBER_FLAG,
            RenameRigComponentCommand.NUMBER_LONG,
            OpenMaya.MSyntax.kLong
        )

        syntax.addFlag(
            RenameRigComponentCommand.PADDING_FLAG,
            RenameRigComponentCommand.PADDING_LONG,
            OpenMaya.MSyntax.kLong
        )

        syntax.addFlag(
            RenameRigComponentCommand.PREFIX_FLAG,
            RenameRigComponentCommand.PREFIX_LONG,
            OpenMaya.MSyntax.kString
        )

        return syntax

    def hasSyntax(self):
        return True

    def isUndoable(self):
        return True

    def doIt(self, args_list):
        try:
            args_data = OpenMaya.MArgDatabase(self.syntax(), args_list)
        except RuntimeError:
            return

        try:
            self.selected_component = args_data.getObjectList().getDependNode(0)
        except IndexError:
            self.selected_component = OpenMaya.MObject.kNullObj

        if not self.selected_component.hasFn(OpenMaya.MFn.kDagContainer):
            self.displayError("Must select a component.")
            return

        arg_parser = ArgumentParser(args_data, self.command_name)

        self.alias = arg_parser.get_string(RenameRigComponentCommand.ALIAS_FLAG)
        self.group = arg_parser.get_string(RenameRigComponentCommand.GROUP_FLAG)
        self.number = arg_parser.get_int(RenameRigComponentCommand.NUMBER_FLAG)
        self.padding = arg_parser.get_int(RenameRigComponentCommand.PADDING_FLAG)
        self.prefix = arg_parser.get_string(RenameRigComponentCommand.PREFIX_FLAG)

        if self.number is not None:
            if self.number < 0:
                err_msg = "The {}/{} flag requires a positive number.".format(
                    RenameRigComponentCommand.NUMBER_FLAG,
                    RenameRigComponentCommand.NUMBER_LONG
                )
                self.displayError(err_msg)
                return

        if self.padding is not None:
            if self.padding < 0:
                err_msg = "The {}/{} flag requires a positive number.".format(
                    RenameRigComponentCommand.PADDING_FLAG,
                    RenameRigComponentCommand.PADDING_FLAG
                )
                self.displayError(err_msg)
                return
            else:
                self.padding = max(1, self.padding)

        self.redoIt()

    def get_name(self, obj, old_prefix):
        name = node_short_name(obj)

        if name in [
            'about',
            'input',
            'guided',
            'guides',
            'internal',
            'display',
            'control',
            'deform',
            'output'
        ]:
            return name

        full_path = node_long_name(obj)
        path_parts = full_path.split('|')

        if (
               'input' in path_parts
            or 'output' in path_parts
            or 'deform' in path_parts
        ):
            return name

        short_name = name.replace(old_prefix, '')
        name_parts = map(str, short_name.split('_'))

        if name_parts[0] == self.cmpt_name:
            name_parts.pop(0)

        if self.number:
            number = '{:0{}d}'.format(self.number, self.padding or 1)
        else:
            number = None

        prefix_parts = [
            self.group,
            self.prefix,
            self.alias,
            number,
        ]

        prefix_parts = [part for part in prefix_parts if part]

        name_parts = prefix_parts + name_parts
        new_name = "_".join([part for part in name_parts if part])

        return new_name

    def nameIt(self, obj, old_prefix):
        new_name = self.get_name(obj, old_prefix)
        self.dg_mod.renameNode(obj, new_name).doIt()

    def redoIt(self):
        cmpt_dag = OpenMaya.MDagPath.getAPathTo(self.selected_component)

        old_prefix = node_short_name(cmpt_dag.node())
        old_prefix = '_'.join(old_prefix.split('_')[:-1])

        new_name = self.get_name(self.selected_component, old_prefix)

        if cmds.objExists(new_name):
            other_cmpt = get_cmpt_by_name(new_name)

            if self.selected_component != other_cmpt:
                self.displayError("A component name '%s' already exists." % new_name)
                return

        for each in iter_asset(self.selected_component):
            self.nameIt(each, old_prefix)

        result = node_short_name(self.selected_component)

        self.setResult(result)

    def undoIt(self):
        self.dg_mod.undoIt()


class MirrorComponentGuidesCommand(OpenMaya.MPxCommand):
    """Command for mirroring a component's guides.

    Usage
    -----
        mirrorCmptGuides [-mirrorAcross "XY"|"YZ"|"XZ"] [-searchReplace "" ""] [cmpt...]
    """

    command_name = 'mirrorCmptGuides'

    MIRROR_ACROSS_FLAG = "-ma"
    MIRROR_ACROSS_LONG = "-mirrorAcross"

    SEARCH_REPLACE_FLAG = "-sr"
    SEARCH_REPLACE_LONG = "-searchReplace"

    def __init__(self):
        super(MirrorComponentGuidesCommand, self).__init__()

        self.selected_components = []
        self.mirror_across = 'YZ'
        self.search_replace = None

        self.mirror_position_matrix = OpenMaya.MMatrix()
        self.mirror_orientation_matrix = OpenMaya.MMatrix()

        self.undo_data = []

    @staticmethod
    def create():
        return MirrorComponentGuidesCommand()

    @staticmethod
    def hasSyntax():
        return True

    @staticmethod
    def isUndoable():
        return True

    @staticmethod
    def get_syntax():
        syntax = OpenMaya.MSyntax()

        syntax.setObjectType(OpenMaya.MSyntax.kSelectionList)
        syntax.useSelectionAsDefault(True)

        syntax.addFlag(
            MirrorComponentGuidesCommand.MIRROR_ACROSS_FLAG,
            MirrorComponentGuidesCommand.MIRROR_ACROSS_LONG,
            OpenMaya.MSyntax.kString
        )

        syntax.addFlag(
            MirrorComponentGuidesCommand.SEARCH_REPLACE_FLAG,
            MirrorComponentGuidesCommand.SEARCH_REPLACE_LONG,
            (
                OpenMaya.MSyntax.kString,
               OpenMaya.MSyntax.kString
            )
        )

        return syntax

    def doIt(self, args_list):
        args_data = OpenMaya.MArgDatabase(self.syntax(), args_list)

        arg_parser = ArgumentParser(args_data, self.command_name)

        try:
            self.selected_components = arg_parser.get_selected_components()
        except LookupError as e:
            self.displayError(str(e))
            return

        if args_data.isFlagSet(MirrorComponentGuidesCommand.SEARCH_REPLACE_FLAG):
            lhs = args_data.flagArgumentString(MirrorComponentGuidesCommand.SEARCH_REPLACE_FLAG, 0)
            rhs = args_data.flagArgumentString(MirrorComponentGuidesCommand.SEARCH_REPLACE_FLAG, 1)

            if lhs == rhs or (not lhs) or (not rhs):
                err_msg = (
                    "The {}/{} flag requires unique values.".format(
                        MirrorComponentGuidesCommand.SEARCH_REPLACE_FLAG,
                        MirrorComponentGuidesCommand.SEARCH_REPLACE_LONG
                    )
                )

                self.displayError(err_msg)
                return

            self.search_replace = lhs, rhs

        self.mirror_across = arg_parser.get_string(
            MirrorComponentGuidesCommand.MIRROR_ACROSS_FLAG,
            default='YZ'
        ).upper()

        if not self.mirror_across in ['XY', 'YZ', 'XZ']:
            err_msg = (
                "The {}/{} flag expects a value of 'XY', 'YZ', or 'XZ'."
            ).format(
                MirrorComponentGuidesCommand.MIRROR_ACROSS_FLAG,
                MirrorComponentGuidesCommand.MIRROR_ACROSS_LONG
            )

            self.displayError(err_msg)
            return

        self.redoIt()

    def mirror_name(self, name):
        result = name

        if self.search_replace:
            lhs, rhs = self.search_replace

            name_parts = name.split('_')

            try:
                idx = name_parts.index(lhs)
                name_parts[idx] = rhs
            except ValueError:
                pass

            result = '_'.join(name_parts)

        return result

    def workIt(self, guide_data):
        mirrored_data = {}

        for guide_name, attr_data in guide_data.iteritems():
            mirrored_name = self.mirror_name(guide_name)

            x = attr_data['translateX']
            y = attr_data['translateY']
            z = attr_data['translateZ']

            m = OpenMaya.MMatrix([1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, x, y, z, 1])

            name_parts = mirrored_name.split('_')

            if 'aim' in name_parts or 'up' in name_parts:
                mm = m * self.mirror_orientation_matrix
            else:
                mm = m * self.mirror_position_matrix

            mx = mm.getElement(3, 0)
            my = mm.getElement(3, 1)
            mz = mm.getElement(3, 2)

            mirrored_data[mirrored_name] = {
                'translateX': mx,
                'translateY': my,
                'translateZ': mz
            }

        return mirrored_data

    def redoIt(self):
        if self.mirror_across == 'XY':
            self.mirror_position_matrix = OpenMaya.MMatrix(
                [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1]
            )

            self.mirror_orientation_matrix = OpenMaya.MMatrix(
                [-1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
            )
        elif self.mirror_across == 'YZ':
            self.mirror_position_matrix = OpenMaya.MMatrix(
                [-1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
            )

            self.mirror_orientation_matrix = OpenMaya.MMatrix(
                [1, 0, 0, 0, 0, -1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1]
            )
        elif self.mirror_across == 'XZ':
            self.mirror_position_matrix = OpenMaya.MMatrix(
                [1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
            )

            self.mirror_orientation_matrix = OpenMaya.MMatrix(
                [-1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1]
            )

        for cmpt in self.selected_components:
            cmpt_name = node_short_name(cmpt)
            other_name = self.mirror_name(cmpt_name)

            if cmpt_name == other_name:
                other_cmpt = cmpt
            else:
                other_cmpt = get_cmpt_by_name(other_name)

            if other_cmpt.isNull():
                continue

            cmpt_data = dict(SaveComponentGuidesCommand.workIt(cmpt))
            self.undo_data.append((cmpt, cmpt_data))

            other_data = self.workIt(cmpt_data)

            LoadComponentGuidesCommand.workIt(other_cmpt, other_data)

    def undoIt(self):
        for cmpt, data in self.undo_data:
            LoadComponentGuidesCommand.workIt(cmpt, data)


class BaseComponentIOCommand(OpenMaya.MPxCommand):
    """Base command for load/save component data."""

    command_name = "cmptGuideData"
    is_undoable = False

    FILEPATH_FLAG = '-f'
    FILEPATH_LONG = '-filepath'

    def __init__(self):
        super(BaseComponentIOCommand, self).__init__()

        self.filepath = ""
        self.selected_components = []

    @staticmethod
    def hasSyntax():
        return True

    def isUndoable(self):
        return self.is_undoable

    @staticmethod
    def get_syntax():
        syntax = OpenMaya.MSyntax()

        syntax.setObjectType(OpenMaya.MSyntax.kSelectionList, 1)
        syntax.useSelectionAsDefault(True)

        syntax.addFlag(
            BaseComponentIOCommand.FILEPATH_FLAG,
            BaseComponentIOCommand.FILEPATH_LONG,
            OpenMaya.MSyntax.kString
        )

        return syntax

    def parse_args(self, args_list):
        args_data = OpenMaya.MArgDatabase(self.syntax(), args_list)

        arg_parser = ArgumentParser(args_data, self.command_name)

        try:
            self.filepath = arg_parser.get_string(
                BaseComponentIOCommand.FILEPATH_FLAG,
                BaseComponentIOCommand.FILEPATH_LONG,
                is_required=True
            )

            self.selected_components = arg_parser.get_selected_components()
        except LookupError as e:
            self.displayError(str(e))
            raise ParseArgumentError()

        return args_data

    def doIt(self, args_list):
        try:
            self.parse_args(args_list)
        except ParseArgumentError:
            return

        self.redoIt()

    def redoIt(self):
        pass

    def undoIt(self):
        pass


class LoadComponentGuidesCommand(BaseComponentIOCommand):
    """Command to load component guide data.

    Usage
    -----

    loadCmptGuides [-filepath ""] [cmpt...]
    """

    command_name = 'loadCmptGuides'
    is_undoable = True

    def __init__(self):
        super(LoadComponentGuidesCommand, self).__init__()

        self.undo_data = []

    @staticmethod
    def create():
        return LoadComponentGuidesCommand()

    @staticmethod
    def workIt(cmpt, cmpt_data):
        undo_data = []

        for guide in iter_dag(find_cmpt_node(cmpt, 'guides')):
            guide_name = node_short_name(guide)

            try:
                guide_data = cmpt_data[guide_name]
            except KeyError:
                continue

            guide_fn = OpenMaya.MFnDagNode(guide)

            for attr in [
                'translateX',
                'translateY',
                'translateZ',
            ]:
                plug = guide_fn.findPlug(attr, True)
                old_value = plug.asDouble()

                if not (plug.isLocked or plug.isDestination):
                    plug.setDouble(guide_data[attr])

                undo_data.append((plug, old_value))

        return undo_data

    def redoIt(self):
        with open(self.filepath, 'r') as fp:
            data = json.load(fp)

        for cmpt in self.selected_components:
            cmpt_name = node_short_name(cmpt)

            try:
                cmpt_data = data[cmpt_name]
            except KeyError:
                self.displayWarning("No guide data found for '{}'.".format(cmpt_name))
            else:
                undo_data = self.workIt(cmpt, cmpt_data)
                self.undo_data.extend(undo_data)

    def undoIt(self):
        for plug, old_value in self.undo_data:
            if not (plug.isLocked or plug.isDestination):
                plug.setDouble(old_value)


class SaveComponentGuidesCommand(BaseComponentIOCommand):
    """Command to save component guide data.

    Usage
    -----

    saveCmptGuides [-filepath ""] [cmpt...]
    """

    command_name = 'saveCmptGuides'
    is_undoable = False

    @staticmethod
    def create():
        return SaveComponentGuidesCommand()

    @staticmethod
    def workIt(cmpt):
        for node in iter_dag(find_cmpt_node(cmpt, 'guides')):
            data = {}

            node_fn = OpenMaya.MFnDagNode(node)

            for attr in [
                'translateX',
                'translateY',
                'translateZ',
            ]:
                data[attr] = node_fn.findPlug(attr, True).asDouble()

            yield node_short_name(node), data

    def redoIt(self):
        data = {
            node_short_name(cmpt): dict(self.workIt(cmpt))
            for cmpt in self.selected_components
        }

        with open(self.filepath, 'w') as fp:
            json.dump(data, fp, indent=4)

        self.setResult(self.filepath)


class LoadComponentInputsCommand(BaseComponentIOCommand):
    """Command to load component input connections.

    Usage
    -----
        loadCmptInputs [-filepath ""] [cmpt...]
    """

    command_name = 'loadCmptInputs'
    is_undoable = True

    def __init__(self):
        super(LoadComponentInputsCommand, self).__init__()

        self.undo_data = []
        self.search_replace = ("", "")

    @staticmethod
    def create():
        return LoadComponentInputsCommand()

    @staticmethod
    def workIt(cmpt, cmpt_data):
        input_hrc = find_cmpt_node(cmpt, 'input')

        for name, input_data in cmpt_data.iteritems():
            input_node = find_cmpt_node(input_hrc, name)

            if input_node.isNull():
                continue

            input_fn = OpenMaya.MFnDependencyNode(input_node)

            for attr, data in input_data.iteritems():
                if not input_fn.hasAttribute(attr):
                    continue

                cmpt_name, output_name = data

                cmpt = get_cmpt_by_name(cmpt_name)

                if cmpt.isNull():
                    continue

                output_hrc = find_cmpt_node(cmpt, 'output')

                if output_hrc.isNull():
                    continue

                output_node = find_cmpt_node(output_hrc, output_name)

                if output_node.isNull():
                    continue

                output_fn = OpenMaya.MFnDependencyNode(output_node)

                if not output_fn.hasAttribute(attr):
                    continue

                src_plug = output_fn.findPlug(attr, True)
                dest_plug = input_fn.findPlug(attr, True)

                src_attr = plug_long_name(src_plug)
                dest_attr = plug_long_name(dest_plug)

                if cmds.isConnected(src_attr, dest_attr):
                    continue

                cmds.connectAttr(src_attr, dest_attr, force=True)

                yield src_attr, dest_attr

    def redoIt(self):
        with open(self.filepath, 'r') as fp:
            data = json.load(fp)

        for cmpt in self.selected_components:
            cmpt_name = node_short_name(cmpt)

            try:
                cmpt_data = data[cmpt_name]
            except KeyError:
                self.displayWarning("No input data found for '{}'.".format(cmpt_name))
            else:
                for src_attr, dest_attr in self.workIt(cmpt, cmpt_data):
                    self.undo_data.append((src_attr, dest_attr))

    def undoIt(self):
        for src_attr, dst_attr in self.undo_data:
            cmds.disconnectAttr(src_attr, dst_attr)


class SaveComponentInputsCommand(BaseComponentIOCommand):
    """Command to save component input connections.

    Usage
    -----
        saveCmptInputs [-filepath ""] [cmpt...]
    """

    command_name = 'saveCmptInputs'
    is_undoable = False

    @staticmethod
    def create():
        return SaveComponentInputsCommand()

    @staticmethod
    def doWork(input_plug):
        try:
            driver = input_plug.connectedTo(True, False)[0]
        except IndexError:
            return None

        err = ValueError(
            "Component 'input' nodes must be driven by a component 'output' node."
        )

        if not driver.node().hasFn(OpenMaya.MFn.kDagNode):
            raise err

        driver_container = cmds.container(
            query=True,
            findContainer=node_long_name(driver.node())
        )

        if not driver_container:
            raise err

        driver_cmpt = get_cmpt_by_name(driver_container)

        driver_fn = OpenMaya.MFnDagNode(driver.node())

        if not driver_fn.isChildOf(find_cmpt_node(driver_cmpt, 'output')):
            raise err

        cmpt_name = node_short_name(driver_cmpt)
        driver_name = node_short_name(driver.node())

        return cmpt_name, driver_name

    @staticmethod
    def workIt(cmpt, displayWarning=None):
        for node in iter_dag(find_cmpt_node(cmpt, 'input')):
            data = {}

            input_name = node_short_name(node)

            if not input_name.endswith('srt'):
                continue

            node_fn = OpenMaya.MFnDagNode(node)

            for attr in [
                'translate', 'translateX', 'translateY', 'translateZ',
                'rotate', 'rotateX', 'rotateY', 'rotateZ',
                'scale', 'scaleX', 'scaleY', 'scaleZ'
            ]:
                plug = node_fn.findPlug(attr, True)

                try:
                    result = SaveComponentInputsCommand.doWork(plug)
                except ValueError as e:
                    if callable(displayWarning):
                        displayWarning(
                            "Could not save '{}' input '{}' - {}".format(
                                node_short_name(cmpt),
                                plug.name(),
                                str(e)
                            )
                        )
                else:
                    if result is not None:
                        data[attr] = result

            yield input_name, data

    def redoIt(self):
        data = {
            node_short_name(cmpt): dict(self.workIt(cmpt, self.displayWarning))
            for cmpt in self.selected_components
        }

        with open(self.filepath, 'w') as fp:
            json.dump(data, fp, indent=4)

        self.setResult(self.filepath)


class MirrorComponentInputsCommand(OpenMaya.MPxCommand):
    """Command to mirror component input connections.

    Usage
    -----
        mirrorCmptInputs [-searchReplace "" ""] [cmpt...]
    """

    command_name = 'mirrorCmptInputs'

    SEARCH_REPLACE_FLAG = "-sr"
    SEARCH_REPLACE_LONG = "-searchReplace"

    def __init__(self):
        super(MirrorComponentInputsCommand, self).__init__()

        self.selected_components = []
        self.search_replace = ('', '')
        self.undo_data = []

    @staticmethod
    def create():
        return MirrorComponentInputsCommand()

    @staticmethod
    def hasSyntax():
        return True

    @staticmethod
    def isUndoable():
        return True

    @staticmethod
    def get_syntax():
        syntax = OpenMaya.MSyntax()

        syntax.setObjectType(OpenMaya.MSyntax.kSelectionList)
        syntax.useSelectionAsDefault(True)

        syntax.addFlag(
            BaseComponentIOCommand.FILEPATH_FLAG,
            BaseComponentIOCommand.FILEPATH_LONG,
            OpenMaya.MSyntax.kString
        )

        syntax.addFlag(
            MirrorComponentInputsCommand.SEARCH_REPLACE_FLAG,
            MirrorComponentInputsCommand.SEARCH_REPLACE_LONG,
            (
                OpenMaya.MSyntax.kString,
                OpenMaya.MSyntax.kString,
            )
        )

        return syntax

    def parse_args(self, args_list):
        args_data = OpenMaya.MArgDatabase(self.syntax(), args_list)

        arg_parser = ArgumentParser(args_data, self.command_name)

        try:
            self.selected_components = arg_parser.get_selected_components()
        except LookupError as e:
            self.displayError(str(e))
            raise ParseArgumentError()

        if args_data.isFlagSet(MirrorComponentInputsCommand.SEARCH_REPLACE_FLAG):
            lhs = args_data.flagArgumentString(MirrorComponentInputsCommand.SEARCH_REPLACE_FLAG, 0)
            rhs = args_data.flagArgumentString(MirrorComponentInputsCommand.SEARCH_REPLACE_FLAG, 1)

            self.search_replace = lhs, rhs
        else:
            error_msg = "The {}/{} flag is required by the {} command.".format(
                MirrorComponentInputsCommand.SEARCH_REPLACE_FLAG,
                MirrorComponentInputsCommand.SEARCH_REPLACE_LONG,
                self.command_name
            )

            self.displayError(error_msg)
            raise ParseArgumentError()

        return args_data

    def doIt(self, args_list):
        try:
            self.parse_args(args_list)
        except ParseArgumentError:
            return

        self.redoIt()

    def mirror_name(self, name):
        lhs, rhs = self.search_replace

        name_parts = name.split('_')

        try:
            idx = name_parts.index(lhs)
            name_parts[idx] = rhs
        except ValueError:
            pass

        result = '_'.join(name_parts)

        return result

    def doWork(self, data):
        m = self.mirror_name

        if isinstance(data, basestring):
            return m(data)
        elif isinstance(data, (tuple, list)):
            return map(m, data)
        elif isinstance(data, dict):
            return {self.doWork(k): self.doWork(v) for k, v in data.iteritems()}

    def workIt(self, cmpt_data):
        return self.doWork(cmpt_data)

    def redoIt(self):
        for cmpt in self.selected_components:
            cmpt_name = node_short_name(cmpt)

            other_cmpt_name = self.mirror_name(cmpt_name)

            if cmpt_name == other_cmpt_name:
                continue

            other_cmpt = get_cmpt_by_name(other_cmpt_name)

            cmpt_data = dict(SaveComponentInputsCommand.workIt(cmpt))
            mirrored_data = self.workIt(cmpt_data)

            cmpt_undo_data = LoadComponentInputsCommand.workIt(other_cmpt, mirrored_data)
            self.undo_data.extend(cmpt_undo_data)

            self.displayInfo(
                "Mirrored component inputs from '{}' to '{}'.".format(
                    cmpt_name, other_cmpt_name
                )
            )

    def undoIt(self):
        for src_attr, dst_attr in self.undo_data:
            cmds.disconnectAttr(src_attr, dst_attr)


class LoadComponentOutputsCommand(BaseComponentIOCommand):
    """Command to load component "deform" output connections.

    Usage
    -----
        loadCmptOutputs [-filepath ""] [cmpt...]
    """

    command_name = 'loadCmptOutputs'
    is_undoable = True

    def __init__(self):
        super(LoadComponentOutputsCommand, self).__init__()

        self.undo_data = []

    @staticmethod
    def create():
        return LoadComponentOutputsCommand()

    @staticmethod
    def workIt(cmpt, cmpt_data):
        output_hrc = find_cmpt_node(cmpt, 'deform')

        for name, output_data in cmpt_data.iteritems():
            output_node = find_cmpt_node(output_hrc, name)

            if output_node.isNull():
                continue

            node_fn = OpenMaya.MFnDependencyNode(output_node)

            for attr in output_data:
                if not node_fn.hasAttribute(attr):
                    continue

                src_attr = plug_long_name(node_fn.findPlug(attr, True))

                for dest_attr in output_data[attr]:
                    if not cmds.objExists(dest_attr):
                        continue

                    if not cmds.isConnected(src_attr, dest_attr):
                        cmds.connectAttr(src_attr, dest_attr, force=True)

                        yield src_attr, dest_attr

    def redoIt(self):
        with open(self.filepath, 'r') as fp:
            data = json.load(fp)

        for cmpt in self.selected_components:
            cmpt_name = node_short_name(cmpt)

            try:
                cmpt_data = data[cmpt_name]
            except KeyError:
                self.displayWarning("No output data found for '{}'.".format(cmpt_name))
            else:
                for src_attr, dest_attr in self.workIt(cmpt, cmpt_data):
                    self.undo_data.append((src_attr, dest_attr))

    def undoIt(self):
        for src_attr, dst_attr in self.undo_data:
            cmds.disconnectAttr(src_attr, dst_attr)


class SaveComponentOutputsCommand(BaseComponentIOCommand):
    """Command to save component "deform" output connections.

    Usage
    -----
        saveCmptOutputs [-filepath ""] [cmpt...]
    """

    command_name = 'saveCmptOutputs'
    is_undoable = True

    @staticmethod
    def create():
        return SaveComponentOutputsCommand()

    @staticmethod
    def workIt(cmpt):
        result = {}

        for node in iter_dag(find_cmpt_node(cmpt, 'deform')):
            data = {}

            node_fn = OpenMaya.MFnDagNode(node)

            for attr in [
                'translate', 'translateX', 'translateY', 'translateZ',
                'rotate', 'rotateX', 'rotateY', 'rotateZ',
                'scale', 'scaleX', 'scaleY', 'scaleZ'
            ]:
                plug = node_fn.findPlug(attr, True)

                driven = plug.connectedTo(False, True)

                driven = [p.name() for p in driven]

                if driven:
                    data[attr] = driven

            if data:
                result[node_short_name(node)] = data

        return result

    def redoIt(self):
        data = {
            node_short_name(cmpt): dict(self.workIt(cmpt))
            for cmpt in self.selected_components
        }

        with open(self.filepath, 'w') as fp:
            json.dump(data, fp, indent=4)

        self.setResult(self.filepath)


class MirrorComponentOutputsCommand(OpenMaya.MPxCommand):
    """Command to mirror component output connections.

    Usage
    -----
        mirrorCmptInputs [-searchReplace "" ""] [cmpt...]
    """

    command_name = 'mirrorCmptOutputs'

    SEARCH_REPLACE_FLAG = "-sr"
    SEARCH_REPLACE_LONG = "-searchReplace"

    def __init__(self):
        super(MirrorComponentOutputsCommand, self).__init__()

        self.selected_components = []
        self.search_replace = ('', '')
        self.undo_data = []

    @staticmethod
    def create():
        return MirrorComponentOutputsCommand()

    @staticmethod
    def hasSyntax():
        return True

    @staticmethod
    def isUndoable():
        return True

    @staticmethod
    def get_syntax():
        syntax = OpenMaya.MSyntax()

        syntax.setObjectType(OpenMaya.MSyntax.kSelectionList)
        syntax.useSelectionAsDefault(True)

        syntax.addFlag(
            MirrorComponentOutputsCommand.SEARCH_REPLACE_FLAG,
            MirrorComponentOutputsCommand.SEARCH_REPLACE_LONG,
            (
                OpenMaya.MSyntax.kString,
                OpenMaya.MSyntax.kString,
            )
        )

        return syntax

    def parse_args(self, args_list):
        args_data = OpenMaya.MArgDatabase(self.syntax(), args_list)

        arg_parser = ArgumentParser(args_data, self.command_name)

        try:
            self.selected_components = arg_parser.get_selected_components()
        except LookupError as e:
            self.displayError(str(e))
            raise ParseArgumentError()

        if args_data.isFlagSet(MirrorComponentOutputsCommand.SEARCH_REPLACE_FLAG):
            lhs = args_data.flagArgumentString(MirrorComponentOutputsCommand.SEARCH_REPLACE_FLAG, 0)
            rhs = args_data.flagArgumentString(MirrorComponentOutputsCommand.SEARCH_REPLACE_FLAG, 1)

            self.search_replace = lhs, rhs
        else:
            error_msg = "The {}/{} flag is required by the {} command.".format(
                MirrorComponentOutputsCommand.SEARCH_REPLACE_FLAG,
                MirrorComponentOutputsCommand.SEARCH_REPLACE_LONG,
                self.command_name
            )

            self.displayError(error_msg)
            raise ParseArgumentError()

        return args_data

    def doIt(self, args_list):
        try:
            self.parse_args(args_list)
        except ParseArgumentError:
            return

        self.redoIt()

    def mirror_name(self, name):
        lhs, rhs = self.search_replace

        name_parts = name.split('_')

        try:
            idx = name_parts.index(lhs)
            name_parts[idx] = rhs
        except ValueError:
            pass

        result = '_'.join(name_parts)

        return result

    def doWork(self, data):
        m = self.mirror_name

        if isinstance(data, basestring):
            return m(data)
        elif isinstance(data, (tuple, list)):
            return map(m, data)
        elif isinstance(data, dict):
            return {self.doWork(k): self.doWork(v) for k, v in data.iteritems()}

    def workIt(self, cmpt_data):
        return self.doWork(cmpt_data)

    def redoIt(self):
        for cmpt in self.selected_components:
            cmpt_name = node_short_name(cmpt)

            other_cmpt_name = self.mirror_name(cmpt_name)

            if cmpt_name == other_cmpt_name:
                continue

            other_cmpt = get_cmpt_by_name(other_cmpt_name)

            cmpt_data = dict(SaveComponentOutputsCommand.workIt(cmpt))
            mirrored_data = self.workIt(cmpt_data)

            cmpt_undo_data = LoadComponentOutputsCommand.workIt(other_cmpt, mirrored_data)

            self.undo_data.extend(cmpt_undo_data)

            self.displayInfo(
                "Mirrored component output from '{}' to '{}'.".format(
                    cmpt_name, other_cmpt_name
                )
            )

    def undoIt(self):
        for src_attr, dst_attr in self.undo_data:
            cmds.disconnectAttr(src_attr, dst_attr)


def initializePlugin(plugin_mObj):
    fn_plugin = OpenMaya.MFnPlugin(plugin_mObj)

    def register_command(cmd):
        try:
            fn_plugin.registerCommand(cmd.command_name, cmd.create, cmd.get_syntax)
        except:
            sys.stderr.write("Failed to register command: %s\n" % cmd.command_name)

    register_command(RenameRigComponentCommand)

    register_command(AttachComponentGuidesCommand)
    register_command(DetachComponentGuidesCommand)

    register_command(SaveComponentGuidesCommand)
    register_command(LoadComponentGuidesCommand)
    register_command(MirrorComponentGuidesCommand)

    register_command(SaveComponentInputsCommand)
    register_command(LoadComponentInputsCommand)
    register_command(MirrorComponentInputsCommand)

    register_command(SaveComponentOutputsCommand)
    register_command(LoadComponentOutputsCommand)
    register_command(MirrorComponentOutputsCommand)


def uninitializePlugin(plugin_mObj):
    fn_plugin = OpenMaya.MFnPlugin(plugin_mObj)

    def deregister_command(cmd):
        try:
            fn_plugin.deregisterCommand(cmd.command_name)
        except:
            sys.stderr.write("Failed to register command: %s\n" % cmd.command_name)

    deregister_command(RenameRigComponentCommand)

    deregister_command(AttachComponentGuidesCommand)
    deregister_command(DetachComponentGuidesCommand)

    deregister_command(SaveComponentGuidesCommand)
    deregister_command(LoadComponentGuidesCommand)
    deregister_command(MirrorComponentGuidesCommand)

    deregister_command(SaveComponentInputsCommand)
    deregister_command(LoadComponentInputsCommand)
    deregister_command(MirrorComponentInputsCommand)

    deregister_command(SaveComponentOutputsCommand)
    deregister_command(LoadComponentOutputsCommand)
    deregister_command(MirrorComponentOutputsCommand)
