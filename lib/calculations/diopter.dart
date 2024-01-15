import 'dart:math';
import 'package:lens_new/calculations/models/sections.dart';
import 'package:lens_new/calculations/models/sphere_cylinder.dart';

import 'helper/check.dart';
import 'helper/convert.dart';

Sections calculateSections({double sphere = 0, double cylinder = 0, double axis = 0}) {
  double section1 = sphere;
  double section2 = sphere + cylinder;
  double axis2 = axis + 90;

  double axis1 = checkAxis(axis);
  axis2 = checkAxis(axis2);

  return Sections(section1: section1, axis1: axis1, section2: section2, axis2: axis2);
}

SphereCylinder calculateSpheroCylinder({double section1 = 0, double section2 = 0, double axis1 = 0, double axis2 = 0}) {
  double sphere = section1;
  double cylinder = section2 - section1;

  axis1 = checkAxis(axis1);
  axis2 = checkAxis(axis2);

  return SphereCylinder(
    sphere: sphere,
    cylinder: cylinder,
    axis: axis1,
  );
}

SphereCylinder calculateObliqueAxis(
    {double sphere = 0, required double cylinder, required double axis, required double axisNew}) {
  double axisOblique = (axisNew - axis < 0) ? axisNew - axis + 180 : axisNew - axis;
  double cylinderNew = cylinder * sin(deg2rad(axisOblique)) * sin(deg2rad(axisOblique));

  axisNew = checkAxis(axisNew);

  return SphereCylinder(
    sphere: sphere,
    cylinder: cylinderNew,
    axis: axisNew,
  );
}
