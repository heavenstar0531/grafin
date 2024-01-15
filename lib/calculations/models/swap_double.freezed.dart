// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swap_double.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SwapDouble {
  double get double1 => throw _privateConstructorUsedError;
  double get double2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SwapDoubleCopyWith<SwapDouble> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwapDoubleCopyWith<$Res> {
  factory $SwapDoubleCopyWith(
          SwapDouble value, $Res Function(SwapDouble) then) =
      _$SwapDoubleCopyWithImpl<$Res, SwapDouble>;
  @useResult
  $Res call({double double1, double double2});
}

/// @nodoc
class _$SwapDoubleCopyWithImpl<$Res, $Val extends SwapDouble>
    implements $SwapDoubleCopyWith<$Res> {
  _$SwapDoubleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? double1 = null,
    Object? double2 = null,
  }) {
    return _then(_value.copyWith(
      double1: null == double1
          ? _value.double1
          : double1 // ignore: cast_nullable_to_non_nullable
              as double,
      double2: null == double2
          ? _value.double2
          : double2 // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SwapDoubleCopyWith<$Res>
    implements $SwapDoubleCopyWith<$Res> {
  factory _$$_SwapDoubleCopyWith(
          _$_SwapDouble value, $Res Function(_$_SwapDouble) then) =
      __$$_SwapDoubleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double double1, double double2});
}

/// @nodoc
class __$$_SwapDoubleCopyWithImpl<$Res>
    extends _$SwapDoubleCopyWithImpl<$Res, _$_SwapDouble>
    implements _$$_SwapDoubleCopyWith<$Res> {
  __$$_SwapDoubleCopyWithImpl(
      _$_SwapDouble _value, $Res Function(_$_SwapDouble) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? double1 = null,
    Object? double2 = null,
  }) {
    return _then(_$_SwapDouble(
      double1: null == double1
          ? _value.double1
          : double1 // ignore: cast_nullable_to_non_nullable
              as double,
      double2: null == double2
          ? _value.double2
          : double2 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SwapDouble extends _SwapDouble {
  const _$_SwapDouble({required this.double1, required this.double2})
      : super._();

  @override
  final double double1;
  @override
  final double double2;

  @override
  String toString() {
    return 'SwapDouble(double1: $double1, double2: $double2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SwapDouble &&
            (identical(other.double1, double1) || other.double1 == double1) &&
            (identical(other.double2, double2) || other.double2 == double2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, double1, double2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SwapDoubleCopyWith<_$_SwapDouble> get copyWith =>
      __$$_SwapDoubleCopyWithImpl<_$_SwapDouble>(this, _$identity);
}

abstract class _SwapDouble extends SwapDouble {
  const factory _SwapDouble(
      {required final double double1,
      required final double double2}) = _$_SwapDouble;
  const _SwapDouble._() : super._();

  @override
  double get double1;
  @override
  double get double2;
  @override
  @JsonKey(ignore: true)
  _$$_SwapDoubleCopyWith<_$_SwapDouble> get copyWith =>
      throw _privateConstructorUsedError;
}
