import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_double.freezed.dart';

@freezed
class SwapDouble with _$SwapDouble {
  const SwapDouble._();

  const factory SwapDouble({
    required double double1,
    required double double2,
  }) = _SwapDouble;
}