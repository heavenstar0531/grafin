import 'package:freezed_annotation/freezed_annotation.dart';

part 'rgp_lens_input.freezed.dart';

@freezed
class RGPLensInput with _$RGPLensInput {
  const RGPLensInput._();

  const factory RGPLensInput({
    required double r1Old,
    required double r2Old,
    required double sphereOld,
    required double cylinderOld,
    required double axisOld,
    required double nOld,
    required double rotation,
    required double sphereAR,
    required double cylinderAR,
    required double axisAR,
    required double vertex,
    required double r1New,
    required double r2New,
    required double nNew,
    required int fraction,
    required String sign,
  }) = _RGPLensInput;
}