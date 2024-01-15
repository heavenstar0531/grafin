import 'package:freezed_annotation/freezed_annotation.dart';

part 'tail_wrap.freezed.dart';

@freezed
class TailWrap with _$TailWrap {
  const TailWrap._();

  const factory TailWrap({
    required String sphereR,
    required String cylinderR,
    required String axisR,
    required String prismR,
    required String baseR,
    required String sphereL,
    required String cylinderL,
    required String axisL,
    required String prismL,
    required String baseL,
  }) = _TailWrap;
}