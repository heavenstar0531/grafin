import 'dart:math';

import 'helper/check.dart';
import 'helper/constant.dart';
import 'helper/convert.dart';
import 'helper/format.dart';
import 'models/crosscy_cylinder.dart';

CrosscyCylinder calculateCrosscylinder(
    {double sphere1 = 0,
    double cylinder1 = 0,
    double axis1 = 0,
    double sphere2 = 0,
    double cylinder2 = 0,
    double axis2 = 0,
    int fraction = defaultFraction,
    String sign = ''}) {
  axis1 = checkAxis(axis1);
  axis2 = checkAxis(axis2);

  // Calculate vectors for both lenses
  double p11 = -0.5 * cylinder1 * cos(2 * deg2rad(axis1));
  double p12 = -0.5 * cylinder1 * sin(2 * deg2rad(axis1));
  double p13 = sphere1 + 0.5 * cylinder1;
  double p21 = -0.5 * cylinder2 * cos(2 * deg2rad(axis2));
  double p22 = -0.5 * cylinder2 * sin(2 * deg2rad(axis2));
  double p23 = sphere2 + 0.5 * cylinder2;

  // Combine all vectors
  double p1 = p11 + p21;
  double p2 = p12 + p22;
  double p3 = p13 + p23;

  // Calculate new cylinder and sphere
  double cylinder = -2 * sqrt(p1 * p1 + p2 * p2);
  double sphere = p3 - 0.5 * cylinder;

  // Calculate new axis
  double axis = (cylinder != 0) ? rad2deg(0.5 * acos(-2 * p1 / cylinder)) : 0;
  axis = checkAxis(axis);
  axis = (p2 < 0) ? 180 - axis : axis;

  final format = formatSphereCylinder(
      sphere: sphere,
      cylinder: cylinder,
      axis: axis,
      fraction: fraction,
      sign: sign);

  return CrosscyCylinder(
      sphere: sphere,
      cylinder: cylinder,
      axis: axis,
      formattedSphere: format.sphere,
      formattedCylinder: format.cylinder,
      formattedAxis: format.axis);
}

CrosscyCylinder calculateCrosscylinderComponent(
    {double sphere1 = 0,
    double cylinder1 = 0,
    double axis1 = 0,
    double sphere3 = 0,
    double cylinder3 = 0,
    double axis3 = 0,
    int fraction = defaultFraction,
    String sign = ''}) {
  axis1 = checkAxis(axis1);
  axis3 = checkAxis(axis3);

  // Calculate vector lens 1
  double p11 = -0.5 * cylinder1 * cos(2 * deg2rad(axis1));
  double p12 = -0.5 * cylinder1 * sin(2 * deg2rad(axis1));
  double p13 = sphere1 + 0.5 * cylinder1;

  // Calculate vector result lens
  double p31 = -0.5 * cylinder3 * cos(2 * deg2rad(axis3));
  double p32 = -0.5 * cylinder3 * sin(2 * deg2rad(axis3));
  double p33 = sphere3 + 0.5 * cylinder3;

  // Calculate vector lens 2
  double p1 = p31 - p11;
  double p2 = p32 - p12;
  double p3 = p33 - p13;

  // Calculate cylinder and sphere lens 2
  double cylinder = -2 * sqrt(p1 * p1 + p2 * p2);
  double sphere = p3 - 0.5 * cylinder;
  double axis = (cylinder != 0) ? rad2deg(0.5 * acos(-2 * p1 / cylinder)) : 0;
  axis = checkAxis(axis);
  axis = (p2 < 0) ? 180 - axis : axis;

  final format = formatSphereCylinder(
      sphere: sphere,
      cylinder: cylinder,
      axis: axis,
      fraction: fraction,
      sign: sign);

  return CrosscyCylinder(
      sphere: sphere,
      cylinder: cylinder,
      axis: axis,
      formattedSphere: format.sphere,
      formattedCylinder: format.cylinder,
      formattedAxis: format.axis);
}
