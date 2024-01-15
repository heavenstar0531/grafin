import 'dart:math';

import 'package:lens_new/calculations/models/combine_prism.dart';
import 'package:lens_new/calculations/models/resolve_prism.dart';

import 'diopter.dart';
import 'helper/check.dart';
import 'helper/constant.dart';
import 'helper/convert.dart';
import 'helper/format.dart';

CombinePrism combinePrism(
    {required double prism1,
    required double base1,
    required double prism2,
    required double base2,
    int fraction = defaultFraction}) {
  prism1 = checkPositive(prism1);
  base1 = checkPositive(base1);
  prism2 = checkPositive(prism2);
  base2 = checkPositive(base2);

  // Calculate x/y coordinates both prisms
  double x1 = prism1 * cos(deg2rad(base1));
  double y1 = prism1 * sin(deg2rad(base1));
  double x2 = prism2 * cos(deg2rad(base2));
  double y2 = prism2 * sin(deg2rad(base2));

  // Calculate x/y coordinates resultant prism
  double x = x1 + x2;
  double y = y1 + y2;

  // Calculate resultant prism
  double prism = sqrt(pow(x, 2) + pow(y, 2));

  // Calculate resultant base, prevent rounding issues
  double base = (x == 0) ? rad2deg(pi / 2) : (rad2deg(atan(y / x))).abs();

  // Calculate resultant base, prevent rounding issues
  if (x >= 0 && y >= 0) {
    base = 0 + base;
  } // base in quadrant 1
  if (x < 0 && y >= 0) {
    base = 180 - base;
  } // base in quadrant 2
  if (x < 0 && y < 0) {
    base = 180 + base;
  } // base in quadrant 3
  if (x >= 0 && y < 0) {
    base = 360 - base;
  } // base in quadrant 4

  // Round and format values if fraction is set
  String formattedPrism = formatValue(value: prism, fraction: fraction);
  String formattedBase = formatBase(base: base, fraction: fraction);

  return CombinePrism(prism: prism, base: base, formattedPrism: formattedPrism, formattedBase: formattedBase);
}

ResolvePrism resolvePrism({required double prism, required double base, int fraction = defaultFraction}) {
  prism = checkPositive(prism);
  base = checkPositive(base);

  // Calculate x/y vectors
  double x = prism * cos(deg2rad(base));
  double y = prism * sin(deg2rad(base));

  // Calculate base for both single prism
  double base1 = (x >= 0) ? 0 : 180;
  double base2 = (y >= 0) ? 90 : 270;

  // Change vectors to positive prism values, prevent rounding issues
  double prism1 = double.parse(x.toStringAsFixed(10)).abs();
  double prism2 = double.parse(y.toStringAsFixed(10)).abs();

  // Round and format values if fraction is set
  String formattedPrism1 = formatValue(value: prism1, fraction: fraction);
  String formattedPrism2 = formatValue(value: prism2, fraction: fraction);
  String formattedBase1 = formatBase(base: base1, fraction: fraction);
  String formattedBase2 = formatBase(base: base2, fraction: fraction);

  return ResolvePrism(
      prism1: prism1,
      base1: base1,
      prism2: prism2,
      base2: base2,
      formattedPrism1: formattedPrism1,
      formattedBase1: formattedBase1,
      formattedPrism2: formattedPrism2,
      formattedBase2: formattedBase2);
}

double decenterPrism(
    {double sphere = 0,
    double cylinder = 0,
    double axis = 0,
    double vertex = 0,
    double decentration = 0,
    double axisDecentration = 0,
    int fraction = defaultFraction}) {
  axis = checkAxis(axis);
  vertex = checkPositive(vertex);
  decentration = checkPositive(decentration);
  axisDecentration = checkAxis(axisDecentration);

  // Berechnung der sphaerocylindrischen Kombinationen in Dezentrationsrichtung
  final axisOblique = calculateObliqueAxis(sphere: sphere, cylinder: cylinder, axis: axis, axisNew: axisDecentration);

  // Berechnung der prismatischen Wirkung in Dezentrationsrichtung mittels Weinhold-Formel (HH bis A ca. 13.5mm)
  double diopter = axisOblique.sphere + axisOblique.cylinder;

  double prism = (decentration / 10) * diopter / (1 - (13.5 + vertex) / 1000 * diopter); // Weinhold formula
  // double prism = (distance/10) * diopter;  // Prentice formula

  return prism;
}

String calculateConvergence({required double distance, required double pd, int fraction = defaultFraction}) {
  distance = checkPositive(distance);
  pd = checkPositive(pd);

  final double convergence = 10 / distance * pd;

  return formatValue(value: convergence, fraction: fraction);
}
