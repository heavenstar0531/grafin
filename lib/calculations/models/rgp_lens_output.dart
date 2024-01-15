import 'package:freezed_annotation/freezed_annotation.dart';

part 'rgp_lens_output.freezed.dart';

@freezed
class RGPLensOutput with _$RGPLensOutput {
  const RGPLensOutput._();

  const factory RGPLensOutput({
    required double eyeSphere,
    required double eyeCylinder,
    required double eyeAxis,
    required double airSphere,
    required double airCylinder,
    required double airAxis,
    required double eyeSection1,
    required double eyeSection2,
    required double airSection1,
    required double airSection2,
    required String eyeFormattedSphere,
    required String eyeFormattedCylinder,
    required String eyeFormattedAxis,
    required String airFormattedSphere,
    required String airFormattedCylinder,
    required String airFormattedAxis,
    required String eyeFormattedSection1,
    required String eyeFormattedSection2,
    required String airFormattedSection1,
    required String airFormattedSection2,
  }) = _RGPLensOutput;
}