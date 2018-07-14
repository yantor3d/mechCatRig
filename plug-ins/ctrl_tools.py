# ctrl_tools.py
# Commands for working with control shapes

import itertools
import json
import sys

from maya import cmds
from maya.api import OpenMaya

import maya_api_utils


def maya_useNewAPI():
    pass


def is_locked_or_connected(plug):
    """Return True if `plug` is locked or connected."""

    return plug.isLocked or len(plug.connectedTo(True, False)) > 0


def get_world_matrix(node):
    """Return the value of the .worldMatrix attribute on `node`.

    Parameters
    ----------
    node : maya.api.OpenMaya.MObject
        A DAG node in the current scene.

    Returns
    -------
    maya.api.OpenMaya.MMatrix
        The world matrix of the node.
    """

    if not node.hasFn(OpenMaya.MFn.kDagNode):
        return OpenMaya.MMatrix()

    fn_dag = OpenMaya.MFnDagNode(node)

    world_matrix_plug = fn_dag.findPlug('worldMatrix', True)

    return OpenMaya.MMatrix(cmds.getAttr(maya_api_utils.plug_long_name(world_matrix_plug)))


def iter_shapes(node):
    """Iterate over the shape nodes under `node`.

    Parameters
    ----------
    node : maya.api.OpenMaya.MObject
        A DAG or DG node in the current scene.

    Yields
    -------
    maya.api.OpenMaya.MObject
        The next shape node.
    """

    # maya.api.OpenMaya.MItDag is missing in 2016
    fn_dag = OpenMaya.MFnDagNode(node)

    for i in xrange(fn_dag.childCount()):
        child = fn_dag.child(i)

        if child.hasFn(OpenMaya.MFn.kShape):
            yield child


def drawOverride_plugs(node):
    """Return the draw override plugs for `node`.

    Parameters
    ----------
    node : maya.api.OpenMaya.MObject
        A DAG node in the scene

    Returns
    -------
    dict
        overrideColor plugs on `node`.
    """

    node_fn = OpenMaya.MFnDependencyNode(node)

    drawOverride_plug = node_fn.findPlug('drawOverride', True)

    overrideColor_attr = node_fn.findPlug('overrideColor', True).attribute()
    overrideRGBColors_attr = node_fn.findPlug('overrideRGBColors', True).attribute()
    overrideColorRGB_attr = node_fn.findPlug('overrideColorRGB', True).attribute()

    overrideColorR_attr = node_fn.findPlug('overrideColorR', True).attribute()
    overrideColorG_attr = node_fn.findPlug('overrideColorG', True).attribute()
    overrideColorB_attr = node_fn.findPlug('overrideColorB', True).attribute()

    overrideColorRGB_plug = drawOverride_plug.child(overrideColorRGB_attr)

    return {
        'overrideColor': drawOverride_plug.child(overrideColor_attr),
        'overrideRGBColors': drawOverride_plug.child(overrideRGBColors_attr),
        'overrideColorRGB': {
            'R': overrideColorRGB_plug.child(overrideColorR_attr),
            'G': overrideColorRGB_plug.child(overrideColorG_attr),
            'B': overrideColorRGB_plug.child(overrideColorB_attr),
        }
    }


def get_drawOveride_colors(node, shapes=True):
    """Return the draw override settings for `node`.

    Parameters
    ----------
    node : maya.api.OpenMaya.MObject
        A DAG node in the scene
    shapes : bool
        If True, return the drawOverride of the shapes. Otherwise, return the drawOverride
        of the node.

    Returns
    -------
    list
        Shape overrideColor dicts.
    """

    data = []

    nodes = [
        shape for shape in iter_shapes(node) if shape.hasFn(OpenMaya.MFn.kNurbsCurve)
    ] if shapes else [node]

    for node in nodes:
        plugs = drawOverride_plugs(node)

        color_data = {
            'overrideColor': plugs['overrideColor'].asChar(),
            'overrideRGBColors': plugs['overrideRGBColors'].asBool(),
            'overrideColorRGB': [
                plugs['overrideColorRGB']['R'].asFloat(),
                plugs['overrideColorRGB']['G'].asFloat(),
                plugs['overrideColorRGB']['B'].asFloat(),
            ]
        }

        data.append(color_data)

    return data


def set_drawOverride_colors(node, data, shapes=True):
    """Set the draw override settings for `node`.

    Parameters
    ----------
    node : maya.api.OpenMaya.MObject
        A DAG node in the scene
    data : list
        List of drawOverride settings dict
    shapes : bool
        If True, set the drawOverride on the shapes. Otherwise, set the drawOverride
        on the node.
    """

    nodes = [
        shape for shape in iter_shapes(node) if shape.hasFn(OpenMaya.MFn.kNurbsCurve)
    ] if shapes else [node]

    for node, color_data in zip(nodes, data):
        plugs = drawOverride_plugs(node)

        if not is_locked_or_connected(plugs['overrideColor']):
            plugs['overrideColor'].setChar(color_data['overrideColor'])

        if not is_locked_or_connected(plugs['overrideRGBColors']):
            plugs['overrideRGBColors'].setBool(color_data['overrideRGBColors'])

        r, g, b = color_data['overrideColorRGB']

        if not is_locked_or_connected(plugs['overrideColorRGB']['R']):
            plugs['overrideColorRGB']['R'].setFloat(r)

        if not is_locked_or_connected(plugs['overrideColorRGB']['G']):
            plugs['overrideColorRGB']['G'].setFloat(g)

        if not is_locked_or_connected(plugs['overrideColorRGB']['B']):
            plugs['overrideColorRGB']['B'].setFloat(b)


def set_nurbsCurve_data(node, curves_data, world_space=False):
    """Set the nurbsCurve shapes' data on `node`.

    Parameters
    ----------
    node : maya.api.OpenMaya.MObject
        A DAG node in the scene
    curves_data : list
        List of nurbsCurve data
    world_space : bool
        If True, assign the nurbsCurve data in world space. Otherwise, assign the data
        local to the node.
    """

    dagMod = OpenMaya.MDagModifier()

    number_of_curves = len(curves_data)

    curves = [obj for obj in iter_shapes(node) if obj.hasFn(OpenMaya.MFn.kNurbsCurve)]

    excess = len(curves) - number_of_curves

    if excess > 0:
        for i in range(excess):
            obj = curves.pop(-1)
            dagMod.deleteNode(obj)
    elif excess < 0:
        for i in range(-excess):
            obj = dagMod.createNode('nurbsCurve', node)
            curves.append(obj)

    dagMod.doIt()

    for data, curve in zip(curves_data, curves):
        curve_fn = OpenMaya.MFnNurbsCurve()

        curveData_fn = OpenMaya.MFnNurbsCurveData()
        curveData_obj = curveData_fn.create()

        if world_space:
            wm = get_world_matrix(curve)
        else:
            wm = OpenMaya.MMatrix(data['worldMatrix'])

        wim = wm.inverse()

        cvs = [OpenMaya.MPoint(p) * wim for p in data['cvs']]
        knots = OpenMaya.MDoubleArray(data['knots'])

        curve_fn.create(
            cvs, knots, data['degree'], data['form'], False, True, curveData_obj
        )

        create_plug = OpenMaya.MFnDagNode(curve).findPlug('create', True)

        if is_locked_or_connected(create_plug):
            raise ValueError()

        create_plug.setMObject(curveData_obj)

    return dagMod


def get_nurbsCurve_data(node):
    """Return the nurbsCurve shapes' data on `node`.

    Parameters
    ----------
    node : maya.api.OpenMaya.MObject
        A DAG node in the scene

    Returns
    -------
    list
        List of nurbsCurve data
    """

    data = []

    for shape in iter_shapes(node):
        if not shape.hasFn(OpenMaya.MFn.kNurbsCurve):
            continue

        curve_fn = OpenMaya.MFnNurbsCurve(shape)

        wm = get_world_matrix(shape)

        cvs = [p * wm for p in curve_fn.cvPositions(OpenMaya.MSpace.kObject)]
        cvs = [(p.x, p.y, p.z) for p in cvs]

        shape_data = {
            'worldMatrix': list(wm),
            'cvs': cvs,
            'knots': list(curve_fn.knots()),
            'degree': curve_fn.degree,
            'form': curve_fn.form,
            'is2D': False,
            'rational': True
        }

        data.append(shape_data)

    return data


class CopyControlColorsCommand(OpenMaya.MPxCommand):
    """Command that copies control colors from the first selected node to all others."""

    command_name = 'copyCtrlColors'

    def __init__(self):
        super(CopyControlColorsCommand, self).__init__()

        self.selection = []
        self.undo_data = []

    @staticmethod
    def create():
        return CopyControlColorsCommand()

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

        selection = args_data.getObjectList()

        for i in xrange(selection.length()):
            try:
                dag_path = selection.getDagPath(i)
            except RuntimeError:
                continue

            if not (
                        dag_path.hasFn(OpenMaya.MFn.kTransform)
                    or dag_path.hasFn(OpenMaya.MFn.kNurbsCurve)
            ):
                continue

            if not dag_path.node().hasFn(OpenMaya.MFn.kTransform):
                dag_path.pop()

            self.selection.append(dag_path.node())

        if len(self.selection) < 2:
            self.displayError("Must select at least two controls.")
            return

        self.redoIt()

    def redoIt(self):
        nodes = iter(self.selection)

        source_node = next(nodes)

        color_data = get_drawOveride_colors(source_node)

        for node in nodes:
            undo_data = get_drawOveride_colors(node)

            try:
                set_drawOverride_colors(node, itertools.repeat(*color_data))
            except ValueError:
                self.displayError(
                    (
                        "Cannot copy colors to {} because "
                        "the an attribute is locked or connected."
                    ).format(maya_api_utils.node_short_name(node))
                )

            self.undo_data.append((node, undo_data))

    def undoIt(self):
        for node, undo_data in self.undo_data:
            set_drawOverride_colors(node, undo_data)


class CopyControlShapesCommand(OpenMaya.MPxCommand):
    """Command that copies control shapes from the first selected node to all others."""

    command_name = 'copyCtrlShapes'

    MIRROR_ACROSS_FLAG = "-ma"
    MIRROR_ACROSS_LONG = "-mirrorAcross"

    WORLD_FLAG = "-w"
    WORLD_LONG = "-worldSpace"

    def __init__(self):
        super(CopyControlShapesCommand, self).__init__()

        self.mirrorMatrix = OpenMaya.MMatrix()
        self.mirror_across = ""
        self.world_space = False

        self.selection = []
        self.undo_data = []

    @staticmethod
    def create():
        return CopyControlShapesCommand()

    @staticmethod
    def get_syntax():
        syntax = OpenMaya.MSyntax()

        syntax.setObjectType(OpenMaya.MSyntax.kSelectionList)
        syntax.useSelectionAsDefault(True)

        syntax.addFlag(
            CopyControlShapesCommand.MIRROR_ACROSS_FLAG,
            CopyControlShapesCommand.MIRROR_ACROSS_LONG,
            OpenMaya.MSyntax.kString
        )

        syntax.addFlag(
            CopyControlShapesCommand.WORLD_FLAG,
            CopyControlShapesCommand.WORLD_LONG
        )

        return syntax

    def hasSyntax(self):
        return True

    def isUndoable(self):
        return True

    def doIt(self, args_list):
        args_data = OpenMaya.MArgDatabase(self.syntax(), args_list)

        if args_data.isFlagSet(CopyControlShapesCommand.MIRROR_ACROSS_FLAG):
            self.mirror_across = args_data.flagArgumentString(CopyControlShapesCommand.MIRROR_ACROSS_FLAG, 0).upper()

            if not self.mirror_across in ['XY', 'YZ', 'XZ']:
                err_msg = (
                    "The {}/{} flag expects a value of 'XY', 'YZ', or 'XZ'."
                ).format(
                    CopyControlShapesCommand.MIRROR_ACROSS_FLAG,
                    CopyControlShapesCommand.MIRROR_ACROSS_LONG
                )

                self.displayError(err_msg)
                return

        if self.mirror_across == 'XY':
            self.mirrorMatrix = OpenMaya.MMatrix(
                [1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1]
            )
        elif self.mirror_across == 'YZ':
            self.mirrorMatrix = OpenMaya.MMatrix(
                [-1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
            )
        elif self.mirror_across == 'XZ':
            self.mirrorMatrix = OpenMaya.MMatrix(
                [1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]
            )

        self.world_space = args_data.isFlagSet(CopyControlShapesCommand.WORLD_FLAG)

        selection = args_data.getObjectList()

        for i in xrange(selection.length()):
            try:
                dag_path = selection.getDagPath(i)
            except RuntimeError:
                continue

            if not (
                        dag_path.hasFn(OpenMaya.MFn.kTransform)
                    or dag_path.hasFn(OpenMaya.MFn.kNurbsCurve)
            ):
                continue

            if not dag_path.node().hasFn(OpenMaya.MFn.kTransform):
                dag_path.pop()

            self.selection.append(dag_path.node())

        if len(self.selection) < 2:
            self.displayError("Must select at least two controls.")
            return

        self.redoIt()

    def mirrorIt(self, curve_data):
        for i, data in enumerate(curve_data):
            if self.world_space:
                worldMatrix = OpenMaya.MMatrix()
            else:
                worldMatrix = OpenMaya.MMatrix(data['worldMatrix'])

            worldInverseMatrix = worldMatrix.inverse()

            m = worldInverseMatrix * self.mirrorMatrix * worldMatrix

            points = [OpenMaya.MPoint(p) for p in data['cvs']]
            points = [p * m for p in points]
            curve_data[i]['cvs'] = [(p.x, p.y, p.z) for p in points]

    def redoIt(self):
        nodes = iter(self.selection)

        source_node = next(nodes)
        curve_data = get_nurbsCurve_data(source_node)

        if self.mirror_across:
            self.mirrorIt(curve_data)

        for node in nodes:
            undo_data = get_nurbsCurve_data(node)

            try:
                dag_mod = set_nurbsCurve_data(node, curve_data, self.world_space)
            except ValueError:
                self.displayError(
                    (
                        "Cannot copy curve to {} because "
                        "the .create attribute is locked or connected."
                    ).format(maya_api_utils.node_short_name(node))
                )

                continue

            self.undo_data.append((node, dag_mod, undo_data))

    def undoIt(self):
        for node, dag_mod, curve_data in self.undo_data:
            dag_mod.undoIt()
            set_nurbsCurve_data(node, curve_data)



class SaveControlShapesCommand(OpenMaya.MPxCommand):
    """Command that saves control shapes to a JSON file."""

    command_name = 'saveCtrlShapes'

    FILEPATH_FLAG = "-f"
    FILEPATH_LONG = "-filepath"

    PRETTY_FLAG = "-p"
    PRETTY_LONG = "-pretty"

    def __init__(self):
        super(SaveControlShapesCommand, self).__init__()

        self.selection = []
        self.indent = None
        self.filepath = ''

    @staticmethod
    def create():
        return SaveControlShapesCommand()

    @staticmethod
    def get_syntax():
        syntax = OpenMaya.MSyntax()

        syntax.setObjectType(OpenMaya.MSyntax.kSelectionList)
        syntax.useSelectionAsDefault(True)

        syntax.addFlag(
            SaveControlShapesCommand.FILEPATH_FLAG,
            SaveControlShapesCommand.FILEPATH_LONG,
            OpenMaya.MSyntax.kString
        )

        syntax.addFlag(
            SaveControlShapesCommand.PRETTY_FLAG,
            SaveControlShapesCommand.PRETTY_LONG,
        )

        return syntax

    def hasSyntax(self):
        return True

    def isUndoable(self):
        return False

    def doIt(self, args_list):
        args_data = OpenMaya.MArgDatabase(self.syntax(), args_list)

        if args_data.isFlagSet(SaveControlShapesCommand.FILEPATH_FLAG):
            self.filepath = args_data.flagArgumentString(SaveControlShapesCommand.FILEPATH_FLAG, 0)
        else:
            self.displayError("Must specify a filepath.")
            return

        if args_data.isFlagSet(SaveControlShapesCommand.PRETTY_FLAG):
            self.indent = 4
        else:
            self.indent = None

        selection = args_data.getObjectList()

        for i in xrange(selection.length()):
            try:
                dag_path = selection.getDagPath(i)
            except RuntimeError:
                continue

            if dag_path.hasFn(OpenMaya.MFn.kTransform):
                for shape in iter_shapes(dag_path.node()):
                    if shape.hasFn(OpenMaya.MFn.kNurbsCurve):
                        break
                else:
                    continue
            elif not dag_path.hasFn(OpenMaya.MFn.kNurbsCurve):
                continue

            if not dag_path.node().hasFn(OpenMaya.MFn.kTransform):
                dag_path.pop()

            self.selection.append(dag_path.node())

        if not self.selection:
            self.displayError("Must select at least one control.")
            return

        self.redoIt()

    def redoIt(self):
        data = {}

        for node in self.selection:
            data[maya_api_utils.node_short_name(node)] = {
                'curve_data': get_nurbsCurve_data(node),
                'color_data': get_drawOveride_colors(node)
            }

        try:
            with open(self.filepath, 'w') as fp:
                json.dump(data, fp, indent=self.indent)
        except IOError as e:
            self.displayError("Failed to save control shapes. %s" % e)


class LoadControlShapesCommand(OpenMaya.MPxCommand):
    """Command that loads control shapes from a JSON file."""

    command_name = 'loadCtrlShapes'

    FILEPATH_FLAG = "-f"
    FILEPATH_LONG = "-filepath"

    def __init__(self):
        super(LoadControlShapesCommand, self).__init__()

        self.selection = []
        self.filepath = ''

        self.undo_data = []

    @staticmethod
    def create():
        return LoadControlShapesCommand()

    @staticmethod
    def get_syntax():
        syntax = OpenMaya.MSyntax()

        syntax.setObjectType(OpenMaya.MSyntax.kSelectionList)
        syntax.useSelectionAsDefault(True)

        syntax.addFlag(
            LoadControlShapesCommand.FILEPATH_FLAG,
            LoadControlShapesCommand.FILEPATH_LONG,
            OpenMaya.MSyntax.kString
        )

        return syntax

    def hasSyntax(self):
        return True

    def isUndoable(self):
        return True

    def doIt(self, args_list):
        args_data = OpenMaya.MArgDatabase(self.syntax(), args_list)

        if args_data.isFlagSet(LoadControlShapesCommand.FILEPATH_FLAG):
            self.filepath = args_data.flagArgumentString(LoadControlShapesCommand.FILEPATH_FLAG, 0)
        else:
            self.displayError("Must specify a filepath.")
            return

        selection = args_data.getObjectList()

        for i in xrange(selection.length()):
            try:
                dag_path = selection.getDagPath(i)
            except RuntimeError:
                continue

            if not (
                        dag_path.hasFn(OpenMaya.MFn.kTransform)
                    or dag_path.hasFn(OpenMaya.MFn.kNurbsCurve)
            ):
                continue

            if not dag_path.node().hasFn(OpenMaya.MFn.kTransform):
                dag_path.pop()

            self.selection.append(dag_path.node())

        self.redoIt()

    def redoIt(self):
        try:
            with open(self.filepath, 'r') as fp:
                data = json.load(fp)
        except IOError as e:
            self.displayError("Failed to load control shapes. %s" % e)
            return

        if not self.selection:
            for node_name in data:
                node = maya_api_utils.find_node_by_name(node_name)

                if not node.isNull():
                    self.selection.append(node)

        for node in self.selection:
            node_name = maya_api_utils.node_short_name(node)
            try:
                curve_data = data[node_name]['curve_data']
                color_data = data[node_name]['color_data']
            except KeyError:
                continue

            undo_curve_data = get_nurbsCurve_data(node)
            undo_color_data = get_drawOveride_colors(node)

            try:
                dag_mod = set_nurbsCurve_data(node, curve_data)
            except ValueError:
                self.displayError(
                    (
                        "Cannot load shapes on {} because "
                        "the an attribute is locked or connected."
                    ).format(maya_api_utils.node_short_name(node))
                )
                continue

            set_drawOverride_colors(node, color_data)

            self.undo_data.append((node, dag_mod, undo_curve_data, undo_color_data))

    def undoIt(self):
        for node, dag_mod, curve_data, color_data in self.undo_data:
            dag_mod.undoIt()

            set_nurbsCurve_data(node, curve_data)
            set_drawOverride_colors(node, color_data)


def initializePlugin(plugin_mObj):
    fn_plugin = OpenMaya.MFnPlugin(plugin_mObj)

    def register_command(cmd):
        try:
            fn_plugin.registerCommand(cmd.command_name, cmd.create, cmd.get_syntax)
        except:
            sys.stderr.write("Failed to register command: %s\n" % cmd.command_name)

    register_command(SaveControlShapesCommand)
    register_command(LoadControlShapesCommand)
    register_command(CopyControlShapesCommand)
    register_command(CopyControlColorsCommand)


def uninitializePlugin(plugin_mObj):
    fn_plugin = OpenMaya.MFnPlugin(plugin_mObj)

    def deregister_command(cmd):
        try:
            fn_plugin.deregisterCommand(cmd.command_name)
        except:
            sys.stderr.write("Failed to register command: %s\n" % cmd.command_name)

    deregister_command(SaveControlShapesCommand)
    deregister_command(LoadControlShapesCommand)
    deregister_command(CopyControlShapesCommand)
    deregister_command(CopyControlColorsCommand)