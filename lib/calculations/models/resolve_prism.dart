import 'package:freezed_annotation/freezed_annotation.dart';

part 'resolve_prism.freezed.dart';

@freezed
class ResolvePrism with _$ResolvePrism {
  const ResolvePrism._();

  const factory ResolvePrism({
    required double prism1,
    required double base1,
    required double prism2,
    required double base2,
    required String formattedPrism1,
    required String formattedBase1,
    required String formattedPrism2,
    required String formattedBase2,
  }) = _ResolvePrism;
}