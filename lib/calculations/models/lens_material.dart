import 'package:freezed_annotation/freezed_annotation.dart';

part 'lens_material.freezed.dart';

@freezed
class LensMaterial with _$LensMaterial {
  const LensMaterial._();

  const factory LensMaterial({
    required String name,
    required String manufacturer,
    String? USAN,
    String? classification,
    required List<String> distributor,
    required double n,
    required double dk,
  }) = _LensMaterial;
}