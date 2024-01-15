import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_2_radius.freezed.dart';

@freezed
class Check2Radius with _$Check2Radius {
  const Check2Radius._();

  const factory Check2Radius({
    required double r1,
    required double r2,
  }) = _Check2Radius;
}