import 'dart:math';

import 'package:lens_new/calculations/models/rgp_lens_input.dart';
import 'package:lens_new/calculations/models/rgp_lens_output.dart';
import 'package:lens_new/calculations/rgphelper.dart';
import 'package:lens_new/calculations/softlens.dart';
import 'package:lens_new/calculations/vertex.dart';

import 'diopter.dart';
import 'helper/check.dart';
import 'helper/constant.dart';
import 'helper/format.dart';

RGPLensOutput calculateRGP(RGPLensInput input) {
  final radiusOld = check2Radius(r1: input.r1Old, r2: input.r2Old);
  final radiusNew = check2Radius(r1: input.r1New, r2: input.r2New);

  final inducedAirOld = calculateInducedAstigmatism(
      r1: radiusOld.r1,
      r2: radiusOld.r2,
      n1: nTears,
      n2: input.nOld); //double inducedOld = inducedAstigmatism(r1:r1Old, r2:r2Old, n1:nTears, n2:nOld);
  final matrixOld = calculateDiopter2matrix(
      sphere1: input.sphereOld,
      cylinder1: input.cylinderOld,
      axis1: input.axisOld,
      sphere2: inducedAirOld.sphere,
      cylinder2: inducedAirOld.cylinder,
      axis2: inducedAirOld.axis);

  // Overrefraction to vertex 0
  final vertexNew = calculateVertex(
      sphere: input.sphereAR, cylinder: input.cylinderAR, axis: input.axisAR, vertexOld: input.vertex, vertexNew: 0);
  final axisLars = calculateLars(axis: input.axisAR, rotation: input.rotation);

  // Calculate back surface on eye
  double sphereEye = (1 - nTears) / pow(radiusNew.r1, 2) * (radiusOld.r1 - radiusNew.r1) * 1000;
  final inducedEye = calculateInducedAstigmatism(r1: radiusNew.r1, r2: radiusNew.r2, n1: input.nNew, n2: nTears);

  // Calculate lens power on eye
  final matrixEye = calculateDiopter2matrix(
      sphere1: vertexNew.sphere,
      cylinder1: vertexNew.cylinder,
      axis1: axisLars,
      sphere2: sphereEye,
      cylinder2: inducedEye.cylinder,
      axis2: inducedEye.axis);
  final resultEye = calculateMatrixSum(
      Fx1: matrixOld.fx, Fx2: matrixEye.fx, Fy1: matrixOld.fy, Fy2: matrixEye.fy, Fxy1: matrixOld.fxy, Fxy2: matrixEye.fxy);
  final sectionsEye = calculateSections(sphere: resultEye.sphere, cylinder: resultEye.cylinder);

  // Calculate lens power in air
  final inducedAir = calculateInducedAstigmatism(r1: radiusNew.r1, r2: radiusNew.r2, n1: nAir, n2: input.nNew);
  final matrixAir = calculateDiopter2matrix(
      sphere1: resultEye.sphere,
      cylinder1: resultEye.cylinder,
      axis1: resultEye.axis,
      sphere2: inducedAir.sphere,
      cylinder2: inducedAir.cylinder,
      axis2: inducedAir.axis);
  final resultAir = calculateMatrix2diopter(Fx: matrixAir.fx, Fy: matrixAir.fy, Fxy: matrixAir.fxy);
  final sectionsAir = calculateSections(sphere: resultAir.sphere, cylinder: resultAir.cylinder);

  // Round and format the results
  final formatEye = formatSphereCylinder(
      sphere: resultEye.sphere, cylinder: resultEye.cylinder, axis: resultEye.axis, fraction: input.fraction, sign: input.sign);
  final formatAir = formatSphereCylinder(
      sphere: resultAir.sphere, cylinder: resultAir.cylinder, axis: resultAir.axis, fraction: input.fraction, sign: input.sign);

  return RGPLensOutput(
    eyeSphere: resultEye.sphere,
    eyeCylinder: resultEye.cylinder,
    eyeAxis: resultEye.axis,
    airSphere: resultAir.sphere,
    airCylinder: resultAir.cylinder,
    airAxis: resultAir.axis,
    eyeSection1: sectionsEye.section1,
    eyeSection2: sectionsEye.section2,
    airSection1: sectionsAir.section1,
    airSection2: sectionsAir.section2,
    eyeFormattedSphere: formatEye.sphere,
    eyeFormattedCylinder: formatEye.cylinder,
    eyeFormattedAxis: formatEye.axis,
    airFormattedSphere: formatAir.sphere,
    airFormattedCylinder: formatAir.cylinder,
    airFormattedAxis: formatAir.axis,
    eyeFormattedSection1: formatEye.section1,
    eyeFormattedSection2: formatEye.section2,
    airFormattedSection1: formatAir.section1,
    airFormattedSection2: formatAir.section2,
  );
}

RGPLensOutput calculateRGPAirSections(
    {required double r1Old,
    required double r2Old,
    required double section1Old,
    required double section2Old,
    double axisOld = 0,
    required double nOld,
    double rotation = 0,
    double sphereAR = 0,
    double cylinderAR = 0,
    double axisAR = 0,
    double vertex = 0,
    required double r1New,
    required double r2New,
    required double nNew,
    int fraction = defaultFraction,
    String sign = ''}) {
  final sections = calculateSpheroCylinder(section1: section1Old, section2: section1Old, axis1: axisOld);
  final parameters = calculateLensAir2Eye(
      r1: r1Old, r2: r2Old, sphere: sections.sphere, cylinder: sections.cylinder, axis: sections.axis, n1: nOld, n2: nAir);
  return calculateRGP(
    RGPLensInput(
      r1Old: r1Old,
      r2Old: r2Old,
      sphereOld: parameters.sphere,
      cylinderOld: parameters.cylinder,
      axisOld: parameters.sphere,
      nOld: nOld,
      rotation: rotation,
      sphereAR: sphereAR,
      cylinderAR: cylinderAR,
      axisAR: axisAR,
      vertex: vertex,
      r1New: r1New,
      r2New: r2New,
      nNew: nNew,
      fraction: fraction,
      sign: sign,
    ),
  );
}

RGPLensOutput calculateRGPEyeSections(
    {required double r1Old,
    required double r2Old,
    required double section1Old,
    required double section2Old,
    double axisOld = 0,
    required double nOld,
    double rotation = 0,
    double sphereAR = 0,
    double cylinderAR = 0,
    double axisAR = 0,
    double vertex = 0,
    required double r1New,
    required double r2New,
    required double nNew,
    int fraction = defaultFraction,
    String sign = ''}) {
  final sections = calculateSpheroCylinder(section1: section1Old, section2: section1Old, axis1: axisOld);
  return calculateRGP(
    RGPLensInput(
      r1Old: r1Old,
      r2Old: r2Old,
      sphereOld: sections.sphere,
      cylinderOld: sections.cylinder,
      axisOld: sections.axis,
      nOld: nOld,
      rotation: rotation,
      sphereAR: sphereAR,
      cylinderAR: cylinderAR,
      axisAR: axisAR,
      vertex: vertex,
      r1New: r1New,
      r2New: r2New,
      nNew: nNew,
      fraction: fraction,
      sign: sign,
    ),
  );
}

RGPLensOutput calculateRGPAirSpheroCylinder(
    {required double r1Old,
    required double r2Old,
    double sphereOld = 0,
    double cylinderOld = 0,
    double axisOld = 0,
    required double nOld,
    double rotation = 0,
    double sphereAR = 0,
    double cylinderAR = 0,
    double axisAR = 0,
    double vertex = 0,
    required double r1New,
    required double r2New,
    required double nNew,
    int fraction = defaultFraction,
    String sign = ''}) {
  final parameters =
      calculateLensAir2Eye(r1: r1Old, r2: r2Old, sphere: sphereOld, cylinder: cylinderOld, axis: axisOld, n1: nOld, n2: nAir);
  return calculateRGP(
    RGPLensInput(
      r1Old: r1Old,
      r2Old: r2Old,
      sphereOld: parameters.sphere,
      cylinderOld: parameters.cylinder,
      axisOld: parameters.sphere,
      nOld: nOld,
      rotation: rotation,
      sphereAR: sphereAR,
      cylinderAR: cylinderAR,
      axisAR: axisAR,
      vertex: vertex,
      r1New: r1New,
      r2New: r2New,
      nNew: nNew,
      fraction: fraction,
      sign: sign,
    ),
  );
}
