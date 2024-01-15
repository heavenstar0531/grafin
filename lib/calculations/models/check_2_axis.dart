import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_2_axis.freezed.dart';

@freezed
class Check2Axis with _$Check2Axis {
  const Check2Axis._();

  const factory Check2Axis({
    required double axisR1,
    required double axisR2,
  }) = _Check2Axis;
}