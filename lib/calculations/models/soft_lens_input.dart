import 'package:freezed_annotation/freezed_annotation.dart';

part 'soft_lens_input.freezed.dart';

@freezed
class SoftLensInput with _$SoftLensInput {
  const SoftLensInput._();

  const factory SoftLensInput({
    required double sphere1,
    required double cylinder1,
    required double axis1,
    required double sphere2,
    required double cylinder2,
    required double axis2,
    required double rotation,
    required double vertex,
    required int fraction,
    required String sign,
  }) = _SoftLensInput;
}