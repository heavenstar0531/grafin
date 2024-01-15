import 'package:lens_new/calculations/models/round_diopter.dart';
import 'package:lens_new/calculations/models/sphere_cylinder.dart';

import '../diopter.dart';
import 'check.dart';
import 'constant.dart';

SphereCylinder roundSphereCylinder({double sphere = 0, double cylinder = 0, double axis = 0, int fraction = defaultFraction}) {
  final sections = calculateSections(sphere: sphere, cylinder: cylinder);
  double newCylinder = sections.section2 - sections.section1;

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
  //axis     = (fraction < 100) ? axis.toStringAsFixed(0) : axis;

  axis = checkAxis(axis);

  return SphereCylinder(sphere: sphere, cylinder: cylinder, axis: axis);
}

RoundDiopter roundDiopter({required double diopter, int fraction = defaultFraction}) {
  double multiplicator = diopter * fraction;
  double valuePositive = multiplicator.ceil() / fraction;
  double valueNegative = multiplicator.floor() / fraction;
  double deviancePositive = valuePositive - diopter;
  double devianceNegative = valueNegative - diopter;
  double deviance = (deviancePositive.abs() <= devianceNegative.abs()) ? deviancePositive : devianceNegative;
  double rounding = (devianceNegative.abs() < deviancePositive.abs()) ? valueNegative : valuePositive;

  return RoundDiopter(
      rounding: rounding,
      deviance: deviance,
      valuePositive: valuePositive,
      valueNegative: valueNegative,
      deviancePositive: deviancePositive,
      devianceNegative: devianceNegative);
}
