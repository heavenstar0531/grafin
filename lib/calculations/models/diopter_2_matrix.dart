import 'package:freezed_annotation/freezed_annotation.dart';

part 'diopter_2_matrix.freezed.dart';

@freezed
class Diopter2Matrix with _$Diopter2Matrix {
  const Diopter2Matrix._();

  const factory Diopter2Matrix({
    required double fx,
    required double fy,
    required double fxy,
  }) = _Diopter2Matrix;
}