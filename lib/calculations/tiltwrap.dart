import 'dart:math';
import 'package:lens_new/calculations/models/tail_wrap.dart';
import 'package:lens_new/calculations/prism.dart';

import 'helper/check.dart';
import 'helper/constant.dart';
import 'helper/convert.dart';
import 'helper/format.dart';

TailWrap calculateTiltWrap(
    {double sphereR = 0,
    double cylinderR = 0,
    double axisR = 0,
    double sphereL = 0,
    double cylinderL = 0,
    double axisL = 0,
    double prismR = 0,
    double baseR = 0,
    double prismL = 0,
    double baseL = 0,
    double faceformTilt = 0,
    double pantoscopicTilt = 0,
    double nLens = 1.5,
    double pdR = 0,
    double pdL = 0,
    double frameEyesize = 0,
    double dbl = 0,
    double basecurve = 0,
    int fraction = defaultFraction,
    String sign = ''}) {
  axisR = checkAxis(axisR);
  axisL = checkAxis(axisL);
  prismR = checkPositive(prismR);
  baseR = checkPositive(baseR);
  prismL = checkPositive(prismL);
  baseL = checkPositive(baseL);
  nLens = checkPositive(nLens);
  pdR = checkPositive(pdR);
  pdL = checkPositive(pdL);
  frameEyesize = checkPositive(frameEyesize);
  dbl = checkPositive(dbl);
  basecurve = checkPositive(basecurve);

  double j4 = 1 / basecurve / 2 * 1000;
  double x2 = cos(faceformTilt * pi / 180) * (frameEyesize / 2);
  double aw = x2 + dbl / 2;
  double y = sin(faceformTilt * pi / 180) * j4;
  double awy = aw - y;

  double rr = pdR - awy;
  double ll = pdL - awy;

  double zeR = rr / j4;
  double zeL = ll / j4;

  double tiltR = asin(zeR) * 180 / pi;
  double tiltL = asin(zeL) * 180 / pi;

  double diameterR = (((frameEyesize + dbl) / 2) > pdR)
      ? (frameEyesize + ((frameEyesize + dbl) / 2 - pdR) * 2)
      : ((pdR - (frameEyesize + dbl) / 2) * 2 + frameEyesize);
  double diameterL = ((frameEyesize + dbl) / 2) > pdL
      ? frameEyesize + ((frameEyesize + dbl) / 2 - pdL) * 2
      : (pdL - (frameEyesize + dbl) / 2) * 2 + frameEyesize;

  double powerHorizR = pow(sin(deg2rad(axisR)), 2) * cylinderR + sphereR;
  double powerHorizL = pow(sin(deg2rad(axisL)), 2) * cylinderL + sphereL;

  double centerThickR = (powerHorizR >= 0) ? pow((diameterR / 2), 2) * powerHorizR.abs() / (2000 * (nLens - 1)) + 0.5 : 1.5;
  double centerThickL = (powerHorizL >= 0) ? pow((diameterL / 2), 2) * powerHorizL.abs() / (2000 * (nLens - 1)) + 0.5 : 1.5;

  double prismRnew = (centerThickR * basecurve * deg2rad(tiltR) / 10) * 0.6;
  double prismLnew = (centerThickL * basecurve * deg2rad(tiltL) / 10) * 0.6;

  final prismRresult = combinePrism(prism1: prismRnew, base1: 0, prism2: prismR, base2: baseR);
  final prismLresult = combinePrism(prism1: prismLnew, base1: 180, prism2: prismL, base2: baseL);

  double effectiveTiltR = atan(sqrt(pow(sin(deg2rad(tiltR)), 2) + pow(tan(deg2rad(pantoscopicTilt)), 2)) / cos(deg2rad(tiltR)));
  double effectiveTiltL = atan(sqrt(pow(sin(deg2rad(tiltL)), 2) + pow(tan(deg2rad(pantoscopicTilt)), 2)) / cos(deg2rad(tiltL)));

  double tcR = (2 * nLens + pow(sin(effectiveTiltR), 2)) / (2 * nLens * pow(cos(effectiveTiltR), 2));
  double tcL = (2 * nLens + pow(sin(effectiveTiltL), 2)) / (2 * nLens * pow(cos(effectiveTiltL), 2));

  double scR = 1 + ((pow(sin(effectiveTiltR), 2)) / (2 * nLens));
  double scL = 1 + ((pow(sin(effectiveTiltL), 2)) / (2 * nLens));

  double hcR = (tcR + scR) / 2;
  double hcL = (tcL + scL) / 2;

  double aR = atan(tan(deg2rad(pantoscopicTilt)) / sin(deg2rad(tiltR))) * 180 / pi;
  double aL = atan(tan(deg2rad(pantoscopicTilt)) / sin(deg2rad(tiltL))) * 180 / pi;

  double aL2 = 90 - aL;

  double tR = (axisR != '') ? deg2rad(axisR - aR) : 0;
  double tL = (axisL != '') ? deg2rad(axisL - aL2) : 0;

  double pxR = sphereR + cylinderR * pow(sin(tR), 2);
  double pyR = sphereR + cylinderR * pow(cos(tR), 2);
  double ptR = -cylinderR * sin(tR) * cos(tR);

  double pxL = sphereL + cylinderL * pow(sin(tL), 2);
  double pyL = sphereL + cylinderL * pow(cos(tL), 2);
  double ptL = -cylinderL * sin(tL) * cos(tL);

  double pxR2 = pxR / tcR;
  double ptR2 = ptR / hcR;
  double pyR2 = pyR / scR;

  double pxL2 = pxL / scL;
  double ptL2 = ptL / hcL;
  double pyL2 = pyL / tcL;

  double tR2 = pxR2 + pyR2;
  double dR = pxR2 * pyR2 - pow(ptR2, 2);

  double tL2 = pxL2 + pyL2;
  double dL = pxL2 * pyL2 - pow(ptL2, 2);

  double cylinderRresult = -(sqrt(pow(tR2, 2) - 4 * dR));
  double sphereRresult = (tR2 - cylinderRresult) / 2;

  double cylinderLresult = -(sqrt(pow(tL2, 2) - 4 * dL));
  double sphereLresult = (tL2 - cylinderLresult) / 2;

  double tR4 = (ptR != 0) ? atan((sphereRresult - pxR2) / ptR2) * 180 / pi : 0;
  double tL4 = (ptL != 0) ? atan((sphereLresult - pxL2) / ptL2) * 180 / pi : 90;

  double tR3 = atan(sin(deg2rad(pantoscopicTilt)) / tan(deg2rad(tiltR))) * 180 / pi;
  double tL3 = atan(sin(deg2rad(pantoscopicTilt)) / tan(deg2rad(tiltL))) * 180 / pi;

  double aL3 = 90 - tL3;

  double axisRresult = (tR3 + tR4 < 0) ? (tR3 + tR4 + 180) : tR3 + tR4;
  double axisLresult = (aL3 + tL4 < 0) ? (aL3 + tL4 + 180) : aL3 + tL4;

  final formatR =
      formatSphereCylinder(sphere: sphereRresult, cylinder: cylinderRresult, axis: axisRresult, fraction: fraction, sign: sign);
  String formatPrismR = formatValue(value: prismRresult.prism, fraction: fraction);
  String formatBaseR = formatBase(base: prismLresult.base, fraction: fraction);

  final formatL =
      formatSphereCylinder(sphere: sphereLresult, cylinder: cylinderLresult, axis: axisLresult, fraction: fraction, sign: sign);
  String formatPrismL = formatValue(value: prismLresult.prism, fraction: fraction);
  String formatBaseL = formatBase(base: prismLresult.base, fraction: fraction);

  return TailWrap(
      sphereR: formatR.sphere,
      cylinderR: formatR.cylinder,
      axisR: formatR.axis,
      prismR: formatPrismR,
      baseR: formatBaseR,
      sphereL: formatL.sphere,
      cylinderL: formatL.cylinder,
      axisL: formatL.axis,
      prismL: formatPrismL,
      baseL: formatBaseL);
}
