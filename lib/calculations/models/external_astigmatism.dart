import 'package:freezed_annotation/freezed_annotation.dart';

part 'external_astigmatism.freezed.dart';

@freezed
class ExternalAstigmatism with _$ExternalAstigmatism {
  const ExternalAstigmatism._();

  const factory ExternalAstigmatism({
    required double extAstig,
    required double axis,
  }) = _ExternalAstigmatism;
}