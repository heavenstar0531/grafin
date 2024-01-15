import 'package:freezed_annotation/freezed_annotation.dart';

part 'soft_lens_output.freezed.dart';

@freezed
class SoftLensOutput with _$SoftLensOutput {
  const SoftLensOutput._();

  const factory SoftLensOutput({
    required double sphere,
    required double cylinder,
    required double axis,
    required String formattedSphere,
    required String formattedCylinder,
    required String formattedAxis,
  }) = _SoftLensOutput;
}