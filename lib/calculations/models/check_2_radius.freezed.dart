// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_2_radius.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Check2Radius {
  double get r1 => throw _privateConstructorUsedError;
  double get r2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Check2RadiusCopyWith<Check2Radius> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Check2RadiusCopyWith<$Res> {
  factory $Check2RadiusCopyWith(
          Check2Radius value, $Res Function(Check2Radius) then) =
      _$Check2RadiusCopyWithImpl<$Res, Check2Radius>;
  @useResult
  $Res call({double r1, double r2});
}

/// @nodoc
class _$Check2RadiusCopyWithImpl<$Res, $Val extends Check2Radius>
    implements $Check2RadiusCopyWith<$Res> {
  _$Check2RadiusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r1 = null,
    Object? r2 = null,
  }) {
    return _then(_value.copyWith(
      r1: null == r1
          ? _value.r1
          : r1 // ignore: cast_nullable_to_non_nullable
              as double,
      r2: null == r2
          ? _value.r2
          : r2 // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_Check2RadiusCopyWith<$Res>
    implements $Check2RadiusCopyWith<$Res> {
  factory _$$_Check2RadiusCopyWith(
          _$_Check2Radius value, $Res Function(_$_Check2Radius) then) =
      __$$_Check2RadiusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double r1, double r2});
}

/// @nodoc
class __$$_Check2RadiusCopyWithImpl<$Res>
    extends _$Check2RadiusCopyWithImpl<$Res, _$_Check2Radius>
    implements _$$_Check2RadiusCopyWith<$Res> {
  __$$_Check2RadiusCopyWithImpl(
      _$_Check2Radius _value, $Res Function(_$_Check2Radius) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? r1 = null,
    Object? r2 = null,
  }) {
    return _then(_$_Check2Radius(
      r1: null == r1
          ? _value.r1
          : r1 // ignore: cast_nullable_to_non_nullable
              as double,
      r2: null == r2
          ? _value.r2
          : r2 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Check2Radius extends _Check2Radius {
  const _$_Check2Radius({required this.r1, required this.r2}) : super._();

  @override
  final double r1;
  @override
  final double r2;

  @override
  String toString() {
    return 'Check2Radius(r1: $r1, r2: $r2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Check2Radius &&
            (identical(other.r1, r1) || other.r1 == r1) &&
            (identical(other.r2, r2) || other.r2 == r2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, r1, r2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Check2RadiusCopyWith<_$_Check2Radius> get copyWith =>
      __$$_Check2RadiusCopyWithImpl<_$_Check2Radius>(this, _$identity);
}

abstract class _Check2Radius extends Check2Radius {
  const factory _Check2Radius(
      {required final double r1, required final double r2}) = _$_Check2Radius;
  const _Check2Radius._() : super._();

  @override
  double get r1;
  @override
  double get r2;
  @override
  @JsonKey(ignore: true)
  _$$_Check2RadiusCopyWith<_$_Check2Radius> get copyWith =>
      throw _privateConstructorUsedError;
}
