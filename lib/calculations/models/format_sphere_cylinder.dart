import 'package:freezed_annotation/freezed_annotation.dart';

part 'format_sphere_cylinder.freezed.dart';

@freezed
class FormatSphereCylinder with _$FormatSphereCylinder {
  const FormatSphereCylinder._();

  const factory FormatSphereCylinder({
    required String sphere,
    required String cylinder,
    required String axis,
    required String section1,
    required String section2,
  }) = _FormatSphereCylinder;
}