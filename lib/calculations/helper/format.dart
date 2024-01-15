import 'package:lens_new/calculations/helper/round.dart';

import '../diopter.dart';
import '../models/format_sphere_cylinder.dart';
import 'check.dart';
import 'constant.dart';
import 'convert.dart';

/// Formats provided value regarding fraction.
///
/// If fraction <= 100 then round value to 2 digits. Otherwise use the value as
/// is. If result is an integer then return value as integer (i.e. without
/// decimal zero).
String formatValue({required double value, required int fraction}) {
  String formattedValue = value.toString();
  if (fraction <= 100) {
    formattedValue = value.toStringAsFixed(2);
  }

  return formattedValue;
}

String formatBase({required double base, required int fraction}) {
  base = checkPositive(base);
  String formattedBase = base.toString();
  if (fraction <= 100) {
    formattedBase = base.toStringAsFixed(0);
    formattedBase = '$formattedBase' '°';
  }

  return formattedBase;
}

FormatSphereCylinder formatSphereCylinder(
    {double sphere = 0, double cylinder = 0, double axis = 0, int fraction = defaultFraction, String sign = ''}) {
  final convert = convertSphereCylinder(sphere: sphere, cylinder: cylinder, axis: axis, sign: sign);

  final sections = calculateSections(sphere: convert.sphere, cylinder: convert.cylinder);
  final newCylinder = sections.section2 - sections.section1;

  // Round sections
  final roundSphere = roundDiopter(diopter: sections.section1, fraction: fraction);
  final roundCylinder = roundDiopter(diopter: newCylinder, fraction: fraction);

  // Find total spherocylindrical deviance for each of all possible rounding cases
  double case0 = roundSphere.deviancePositive.abs() + roundCylinder.deviancePositive.abs();
  double case1 = roundSphere.deviancePositive.abs() + roundCylinder.devianceNegative.abs();
  double case2 = roundSphere.devianceNegative.abs() + roundCylinder.deviancePositive.abs();
  double case3 = roundSphere.devianceNegative.abs() + roundCylinder.devianceNegative.abs();

  // Find case with the lowest spherocylindrical deviance
  final allCases = [case0, case1, case2, case3];
  allCases.sort();
  double minCase = allCases[0];

  // Map cases with corresponding spherocylindrical combination
  sphere = (minCase == case0 || minCase == case1) ? roundSphere.valuePositive : roundSphere.valueNegative;
  cylinder = (minCase == case0 || minCase == case2) ? roundCylinder.valuePositive : roundCylinder.valueNegative;
  axis = checkAxis(convert.axis);

  final sectionsNew = calculateSections(sphere: sphere, cylinder: cylinder);
  double section1 = sectionsNew.section1;
  double section2 = sectionsNew.section2;

  String sphereFormatted = sphere.toString();
  String cylinderFormatted = cylinder.toString();
  String axisFormatted = axis.toString();

  String section1Formatted = section1.toString();
  String section2Formatted = section2.toString();

  if (sphereFormatted.endsWith('.0') || sphereFormatted.endsWith('.5')) {
    sphereFormatted = '$sphereFormatted' '0';
  }
  if (cylinderFormatted.endsWith('.0') || cylinderFormatted.endsWith('.5')) {
    cylinderFormatted = '$cylinderFormatted' '0';
  }
  if (section1Formatted.endsWith('.0') || section1Formatted.endsWith('.5')) {
    section1Formatted = '$section1Formatted' '0';
  }
  if (section2Formatted.endsWith('.0') || section2Formatted.endsWith('.5')) {
    section2Formatted = '$section2Formatted' '0';
  }

  if (sphereFormatted[0] != '-') {
    sphereFormatted = '+' '$sphereFormatted';
  }
  if (cylinderFormatted[0] != '-') {
    cylinderFormatted = '+' '$cylinderFormatted';
  }
  if (section1Formatted[0] != '-') {
    section1Formatted = '+' '$section1Formatted';
  }
  if (section2Formatted[0] != '-') {
    section2Formatted = '+' '$section2Formatted';
  }

  if (fraction <= 100) {
    axisFormatted = axis.toStringAsFixed(0);
  }
  if (cylinderFormatted == '+0.00') {
    cylinderFormatted = '';
    axisFormatted = '';
  }

  return FormatSphereCylinder(
      sphere: sphereFormatted,
      cylinder: cylinderFormatted,
      axis: axisFormatted,
      section1: section1Formatted,
      section2: section2Formatted);
}
