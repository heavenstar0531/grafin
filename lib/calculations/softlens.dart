import 'package:lens_new/calculations/models/soft_lens_input.dart';
import 'package:lens_new/calculations/models/soft_lens_output.dart';
import 'package:lens_new/calculations/vertex.dart';

import 'crosscylinder.dart';
import 'helper/check.dart';
import 'helper/format.dart';

SoftLensOutput calculateSoftLensMain(SoftLensInput input) {
  final double axis1 = checkAxis(input.axis1);
  final double axis2 = checkAxis(input.axis2);
  final double rotation = checkAxis(input.rotation);
  final double vertex = checkPositive(input.vertex);

  double newAxis = axis1 + rotation;
  final newVertex =
      calculateVertex(sphere: input.sphere2, cylinder: input.cylinder2, axis: axis2, vertexOld: vertex, vertexNew: 0);
  final result = calculateCrosscylinder(
      sphere1: input.sphere1,
      cylinder1: input.cylinder1,
      axis1: newAxis,
      sphere2: newVertex.sphere,
      cylinder2: newVertex.cylinder,
      axis2: newVertex.axis);
  final axisResult = calculateLars(axis: result.axis, rotation: rotation);

  final format = formatSphereCylinder(
      sphere: result.sphere, cylinder: result.cylinder, axis: axisResult, fraction: input.fraction, sign: input.sign);

  return SoftLensOutput(
    sphere: result.sphere,
    cylinder: result.cylinder,
    axis: result.axis,
    formattedSphere: format.sphere,
    formattedCylinder: format.cylinder,
    formattedAxis: format.axis,
  );
}

double calculateLars({required double axis, required double rotation}) {
  axis = (rotation >= 0 && rotation < 90) ? axis - rotation : 180 - rotation + axis;
  axis = checkAxis(axis);
  return axis;
}
