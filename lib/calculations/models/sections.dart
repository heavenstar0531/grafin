import 'package:freezed_annotation/freezed_annotation.dart';

part 'sections.freezed.dart';

@freezed
class Sections with _$Sections {
  const Sections._();

  const factory Sections({
    required double section1,
    required double axis1,
    required double section2,
    required double axis2,
  }) = _Sections;
}