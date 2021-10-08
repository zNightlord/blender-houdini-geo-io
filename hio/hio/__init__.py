import os
import sys

from .find_houdini import append_path, find_houdini

HFS = find_houdini()

if '18.5.696' in HFS:
	append_path(HFS['18.5.696'])
	from .core import core_18_5_696 as core

	# os.add_dll_directory("core_18_5_696.pyd")
else:
	raise 'No valid houdini version found: %s' % HFS.keys()

del append_path
del find_houdini
del HFS

AttribType = core.AttribType
AttribData = core.AttribData
TypeInfo = core.TypeInfo
PrimitiveTypes = core.PrimitiveTypes

Vector2 = core.Vector2
Vector3 = core.Vector3
Vector4 = core.Vector4

Attrib = core.Attrib
Point = core.Point
Vertex = core.Vertex
Polygon = core.Polygon
BezierCurve = core.BezierCurve
NURBSCurve = core.NURBSCurve
Geometry = core.Geometry

__all__ = []
