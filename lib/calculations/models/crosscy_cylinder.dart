import 'package:freezed_annotation/freezed_annotation.dart';

part 'crosscy_cylinder.freezed.dart';

@freezed
class CrosscyCylinder with _$CrosscyCylinder {
  const CrosscyCylinder._();

  const factory CrosscyCylinder({
    required double sphere,
    required double cylinder,
    required double axis,
    required String formattedSphere,
    required String formattedCylinder,
    required String formattedAxis,
  }) = _CrosscyCylinder;
}