import 'package:freezed_annotation/freezed_annotation.dart';

part 'combine_prism.freezed.dart';

@freezed
class CombinePrism with _$CombinePrism {
  const CombinePrism._();

  const factory CombinePrism({
    required double prism,
    required double base,
    required String formattedPrism,
    required String formattedBase,
  }) = _CombinePrism;
}