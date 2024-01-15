import 'package:freezed_annotation/freezed_annotation.dart';

part 'sphere_cylinder.freezed.dart';

@freezed
class SphereCylinder with _$SphereCylinder {
  const SphereCylinder._();

  const factory SphereCylinder({
    required double sphere,
    required double cylinder,
    required double axis,
  }) = _SphereCylinder;
}