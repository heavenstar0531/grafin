import 'package:freezed_annotation/freezed_annotation.dart';

part 'round_diopter.freezed.dart';

@freezed
class RoundDiopter with _$RoundDiopter {
  const RoundDiopter._();

  const factory RoundDiopter({
    required double rounding,
    required double deviance,
    required double valuePositive,
    required double valueNegative,
    required double deviancePositive,
    required double devianceNegative,
  }) = _RoundDiopter;
}