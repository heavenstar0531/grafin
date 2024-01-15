import 'dart:math';
import 'package:lens_new/calculations/models/diopter_2_matrix.dart';
import 'package:lens_new/calculations/models/sphere_cylinder.dart';
import 'package:lens_new/calculations/vertex.dart';

import 'crosscylinder.dart';
import 'helper/check.dart';
import 'helper/convert.dart';
import 'models/external_astigmatism.dart';

SphereCylinder calculateInducedAstigmatism({required double r1, required double r2, required double n1, required double n2}) {
  r1 = checkPositive(r1);
  r2 = checkPositive(r2);
  n1 = checkPositive(n1);
  n2 = checkPositive(n2);

  double sphere = 0;
  double cylinder = -(1000 / r2 - (1000 / r1)) * (n2 - n1);
  double axis = 180;

  return SphereCylinder(
    sphere: sphere,
    cylinder: cylinder,
    axis: axis,
  );
}

ExternalAstigmatism calculateExternalAstigmatism({required double r1, required double r2, double? axisR1, double? axisR2}) {
  final axes = check2Axis(axisR1: axisR1, axisR2: axisR2);
  r1 = checkPositive(r1);
  r2 = checkPositive(r2);

  double extAstig = (r1 >= r2) ? -336 * (1 / r2 - 1 / r1) : -336 * (1 / r1 - 1 / r2);
  double axisResult = (r1 >= r2) ? axes.axisR1 : axes.axisR2;

  return ExternalAstigmatism(
    extAstig: extAstig,
    axis: axisResult,
  );
}

SphereCylinder calculateInternalAstigmatism(
    {double sphere = 0,
    double cylinder = 0,
    double axis = 0,
    double vertex = 0,
    required double r1,
    required double r2,
    double? axisR1,
    double? axisR2}) {
  final axes = check2Axis(axisR1: axisR1, axisR2: axisR2);
  vertex = checkPositive(vertex);
  r1 = checkPositive(r1);
  r2 = checkPositive(r2);

  final vertexNew = calculateVertex(sphere: sphere, cylinder: cylinder, axis: axis, vertexOld: vertex, vertexNew: 0);
  final external = calculateExternalAstigmatism(r1: r1, r2: r2, axisR1: axes.axisR1, axisR2: axes.axisR2);
  final result = calculateCrosscylinderComponent(
      sphere1: 0,
      cylinder1: external.extAstig,
      axis1: external.axis,
      sphere3: vertexNew.sphere,
      cylinder3: vertexNew.cylinder,
      axis3: vertexNew.axis);

  return SphereCylinder(sphere: result.sphere, cylinder: result.cylinder, axis: result.axis);
}

SphereCylinder calculateLensAir2Eye(
    {required double r1,
    required double r2,
    double sphere = 0,
    double cylinder = 0,
    double axis = 0,
    required double n1,
    required double n2}) {
  r1 = checkPositive(r1);
  r2 = checkPositive(r2);
  n1 = checkPositive(n1);
  n2 = checkPositive(n2);

  // Brechwertmatrix Rueckflaeche bisherige KL
  final induced = calculateInducedAstigmatism(r1: r1, r2: r2, n1: n1, n2: n2);

  // Berechnung spaerozylindrische Kombination am Auge
  final result = calculateCrosscylinderComponent(
      sphere1: induced.sphere,
      cylinder1: induced.cylinder,
      axis1: induced.axis,
      sphere3: sphere,
      cylinder3: cylinder,
      axis3: axis);

  return SphereCylinder(sphere: result.sphere, cylinder: result.cylinder, axis: result.axis);
}

Diopter2Matrix calculateDiopter2matrix(
    {double sphere1 = 0, double cylinder1 = 0, double axis1 = 0, double sphere2 = 0, double cylinder2 = 0, double axis2 = 0}) {
  double Fx1 = sphere1 + cylinder1 * pow(sin(deg2rad(axis1)), 2);
  double Fy1 = sphere1 + cylinder1 * pow(cos(deg2rad(axis1)), 2);
  double Fxy1 = -cylinder1 * sin(deg2rad(axis1)) * cos(deg2rad(axis1));

  double Fx2 = sphere2 + cylinder2 * pow(sin(deg2rad(axis2)), 2);
  double Fy2 = sphere2 + cylinder2 * pow(cos(deg2rad(axis2)), 2);
  double Fxy2 = -cylinder2 * sin(deg2rad(axis2)) * cos(deg2rad(axis2));

  double Fx = Fx1 + Fx2;
  double Fy = Fy1 + Fy2;
  double Fxy = Fxy1 + Fxy2;

  return Diopter2Matrix(fx: Fx, fy: Fy, fxy: Fxy);
}

SphereCylinder calculateMatrix2diopter({required double Fx, required double Fy, required double Fxy}) {
  double SpF = Fx + Fy;
  double detF = Fx * Fy - pow(Fxy, 2);
  double cylinder = -sqrt(pow(SpF, 2) - 4 * detF);
  double sphere = (SpF - cylinder) / 2;
  double axis = (Fxy != 0) ? rad2deg(atan((sphere - Fx) / Fxy)) : 0;

  return SphereCylinder(
    sphere: sphere,
    cylinder: cylinder,
    axis: axis,
  );
}

SphereCylinder calculateMatrixSum(
    {required double Fx1,
    required double Fx2,
    required double Fy1,
    required double Fy2,
    required double Fxy1,
    required double Fxy2}) {
  double Fx = Fx1 + Fx2;
  double Fy = Fy1 + Fy2;
  double Fxy = Fxy1 + Fxy2;

  final result = calculateMatrix2diopter(Fx: Fx, Fy: Fy, Fxy: Fxy);

  return SphereCylinder(sphere: result.sphere, cylinder: result.cylinder, axis: result.axis);
}
