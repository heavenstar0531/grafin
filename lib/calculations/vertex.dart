import 'diopter.dart';
import 'helper/check.dart';
import 'helper/constant.dart';
import 'helper/format.dart';
import 'models/crosscy_cylinder.dart';

CrosscyCylinder calculateVertex(
    {double sphere = 0,
    double cylinder = 0,
    double axis = 0,
    double vertexOld = 0,
    double vertexNew = 0,
    int fraction = defaultFraction,
    String sign = ''}) {
  axis = checkAxis(axis);
  vertexOld = checkPositive(vertexOld);
  vertexNew = checkPositive(vertexNew);

  final calculation = calculateSections(sphere: sphere, cylinder: cylinder);

  // Calculate new diopter values for each principal section
  final section1 = calculateVertexSingle(
      section: calculation.section1,
      vertexOld: vertexOld,
      vertexNew: vertexNew);
  final section2 = calculateVertexSingle(
      section: calculation.section2,
      vertexOld: vertexOld,
      vertexNew: vertexNew);

  // Calculate new spherocylindrical combination
  final result =
      calculateSpheroCylinder(section1: section1, section2: section2);
  final format = formatSphereCylinder(
      sphere: result.sphere,
      cylinder: result.cylinder,
      axis: axis,
      fraction: fraction,
      sign: sign);

  return CrosscyCylinder(
    sphere: result.sphere,
    cylinder: result.cylinder,
    axis: axis,
    formattedSphere: format.sphere,
    formattedCylinder: format.cylinder,
    formattedAxis: format.axis
  );
}

double calculateVertexSingle({section = 0, vertexOld = 0, vertexNew = 0}) {
  vertexOld = checkPositive(vertexOld);
  vertexNew = checkPositive(vertexNew);

  double vertexDistance = vertexOld - vertexNew;
  double result =
      (section != 0) ? (1 / (1 / section - vertexDistance / 1000)) : 0;

  return result;
}
