import 'package:lens_new/calculations/models/check_2_axis.dart';
import 'package:lens_new/calculations/models/check_2_radius.dart';

import 'convert.dart';

double checkPositive(double value) {
  return (value < 0) ? throw Exception('Value is less than 0.') : value;
}

double checkNegative(double value) {
  return (value > 0) ? throw Exception('Value is more than 0.') : value;
}

double checkAxis(double axis) {
  while (axis >= 180) {
    axis = axis - 180;
  }
  while (axis < 0) {
    axis = axis + 180;
  }
  return axis;
}

Check2Axis check2Axis({required double? axisR1, required double? axisR2}) {
  if (axisR1 == null && axisR2 == null) {
    throw Exception('Axes for both meridians are not set.');
  }

  axisR2 ??= axisR1! + 90;
  axisR1 ??= axisR2 + 90;

  axisR1 = checkAxis(axisR1);
  axisR2 = checkAxis(axisR2);

  if ((axisR1 - (axisR2)).abs() != 90) {
    throw Exception('Axis for both meridians do not match.');
  }

  return Check2Axis(axisR1: axisR1, axisR2: axisR2);
}

Check2Radius check2Radius({required double r1, required double r2}) {
  if (r1 < r2) {
    final result = swapDoubles(double1: r1, double2: r2);
    return Check2Radius(r1: result.double1, r2: result.double2);
  } else {
    return Check2Radius(r1: r1, r2: r2);
  }
}
