import 'dart:math';
import 'package:lens_new/calculations/models/sphere_cylinder.dart';
import 'package:lens_new/calculations/models/swap_double.dart';

import 'check.dart';

double deg2rad(double degree) {
  return degree * pi / 180;
}

double rad2deg(double radian) {
  return radian * 180 / pi;
}

double diopter2mm(double diopter) {
  return 337.5 / diopter;
}

double mm2diopter(double mm) {
  return 337.5 / mm;
}

SwapDouble swapDoubles({required double double1, required double double2}) {
  double temp1 = double1;
  double temp2 = double2;

  double1 = temp2;
  double2 = temp1;

  return SwapDouble(double1: double1, double2: double2);
}

SphereCylinder convertSphereCylinder({double sphere = 0, double cylinder = 0, double axis = 0, String sign = ''}) {
  double sphereMinus = (cylinder <= 0) ? sphere : sphere + cylinder;
  double cylinderMinus = (cylinder <= 0) ? cylinder : cylinder * -1;
  double axisMinus = (cylinder <= 0) ? axis : axis + 90;
  double spherePlus = (cylinder >= 0) ? sphere : sphere + cylinder;
  double cylinderPlus = (cylinder >= 0) ? cylinder : cylinder * -1;
  double axisPlus = (cylinder >= 0) ? axis : axis + 90;

  sphere = (sign == '-') ? sphereMinus : sphere;
  cylinder = (sign == '-') ? cylinderMinus : cylinder;
  axis = (sign == '-') ? axisMinus : axis;
  sphere = (sign == '+') ? spherePlus : sphere;
  cylinder = (sign == '+') ? cylinderPlus : cylinder;
  axis = (sign == '+') ? axisPlus : axis;

  axis = checkAxis(axis);

  return SphereCylinder(sphere: sphere, cylinder: cylinder, axis: axis);
}
