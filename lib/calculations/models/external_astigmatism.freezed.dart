// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'external_astigmatism.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExternalAstigmatism {
  double get extAstig => throw _privateConstructorUsedError;
  double get axis => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExternalAstigmatismCopyWith<ExternalAstigmatism> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalAstigmatismCopyWith<$Res> {
  factory $ExternalAstigmatismCopyWith(
          ExternalAstigmatism value, $Res Function(ExternalAstigmatism) then) =
      _$ExternalAstigmatismCopyWithImpl<$Res, ExternalAstigmatism>;
  @useResult
  $Res call({double extAstig, double axis});
}

/// @nodoc
class _$ExternalAstigmatismCopyWithImpl<$Res, $Val extends ExternalAstigmatism>
    implements $ExternalAstigmatismCopyWith<$Res> {
  _$ExternalAstigmatismCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extAstig = null,
    Object? axis = null,
  }) {
    return _then(_value.copyWith(
      extAstig: null == extAstig
          ? _value.extAstig
          : extAstig // ignore: cast_nullable_to_non_nullable
              as double,
      axis: null == axis
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExternalAstigmatismCopyWith<$Res>
    implements $ExternalAstigmatismCopyWith<$Res> {
  factory _$$_ExternalAstigmatismCopyWith(_$_ExternalAstigmatism value,
          $Res Function(_$_ExternalAstigmatism) then) =
      __$$_ExternalAstigmatismCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double extAstig, double axis});
}

/// @nodoc
class __$$_ExternalAstigmatismCopyWithImpl<$Res>
    extends _$ExternalAstigmatismCopyWithImpl<$Res, _$_ExternalAstigmatism>
    implements _$$_ExternalAstigmatismCopyWith<$Res> {
  __$$_ExternalAstigmatismCopyWithImpl(_$_ExternalAstigmatism _value,
      $Res Function(_$_ExternalAstigmatism) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extAstig = null,
    Object? axis = null,
  }) {
    return _then(_$_ExternalAstigmatism(
      extAstig: null == extAstig
          ? _value.extAstig
          : extAstig // ignore: cast_nullable_to_non_nullable
              as double,
      axis: null == axis
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ExternalAstigmatism extends _ExternalAstigmatism {
  const _$_ExternalAstigmatism({required this.extAstig, required this.axis})
      : super._();

  @override
  final double extAstig;
  @override
  final double axis;

  @override
  String toString() {
    return 'ExternalAstigmatism(extAstig: $extAstig, axis: $axis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExternalAstigmatism &&
            (identical(other.extAstig, extAstig) ||
                other.extAstig == extAstig) &&
            (identical(other.axis, axis) || other.axis == axis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, extAstig, axis);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExternalAstigmatismCopyWith<_$_ExternalAstigmatism> get copyWith =>
      __$$_ExternalAstigmatismCopyWithImpl<_$_ExternalAstigmatism>(
          this, _$identity);
}

abstract class _ExternalAstigmatism extends ExternalAstigmatism {
  const factory _ExternalAstigmatism(
      {required final double extAstig,
      required final double axis}) = _$_ExternalAstigmatism;
  const _ExternalAstigmatism._() : super._();

  @override
  double get extAstig;
  @override
  double get axis;
  @override
  @JsonKey(ignore: true)
  _$$_ExternalAstigmatismCopyWith<_$_ExternalAstigmatism> get copyWith =>
      throw _privateConstructorUsedError;
}
