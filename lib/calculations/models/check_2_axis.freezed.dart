// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_2_axis.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Check2Axis {
  double get axisR1 => throw _privateConstructorUsedError;
  double get axisR2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Check2AxisCopyWith<Check2Axis> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Check2AxisCopyWith<$Res> {
  factory $Check2AxisCopyWith(
          Check2Axis value, $Res Function(Check2Axis) then) =
      _$Check2AxisCopyWithImpl<$Res, Check2Axis>;
  @useResult
  $Res call({double axisR1, double axisR2});
}

/// @nodoc
class _$Check2AxisCopyWithImpl<$Res, $Val extends Check2Axis>
    implements $Check2AxisCopyWith<$Res> {
  _$Check2AxisCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? axisR1 = null,
    Object? axisR2 = null,
  }) {
    return _then(_value.copyWith(
      axisR1: null == axisR1
          ? _value.axisR1
          : axisR1 // ignore: cast_nullable_to_non_nullable
              as double,
      axisR2: null == axisR2
          ? _value.axisR2
          : axisR2 // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_Check2AxisCopyWith<$Res>
    implements $Check2AxisCopyWith<$Res> {
  factory _$$_Check2AxisCopyWith(
          _$_Check2Axis value, $Res Function(_$_Check2Axis) then) =
      __$$_Check2AxisCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double axisR1, double axisR2});
}

/// @nodoc
class __$$_Check2AxisCopyWithImpl<$Res>
    extends _$Check2AxisCopyWithImpl<$Res, _$_Check2Axis>
    implements _$$_Check2AxisCopyWith<$Res> {
  __$$_Check2AxisCopyWithImpl(
      _$_Check2Axis _value, $Res Function(_$_Check2Axis) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? axisR1 = null,
    Object? axisR2 = null,
  }) {
    return _then(_$_Check2Axis(
      axisR1: null == axisR1
          ? _value.axisR1
          : axisR1 // ignore: cast_nullable_to_non_nullable
              as double,
      axisR2: null == axisR2
          ? _value.axisR2
          : axisR2 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Check2Axis extends _Check2Axis {
  const _$_Check2Axis({required this.axisR1, required this.axisR2}) : super._();

  @override
  final double axisR1;
  @override
  final double axisR2;

  @override
  String toString() {
    return 'Check2Axis(axisR1: $axisR1, axisR2: $axisR2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Check2Axis &&
            (identical(other.axisR1, axisR1) || other.axisR1 == axisR1) &&
            (identical(other.axisR2, axisR2) || other.axisR2 == axisR2));
  }

  @override
  int get hashCode => Object.hash(runtimeType, axisR1, axisR2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Check2AxisCopyWith<_$_Check2Axis> get copyWith =>
      __$$_Check2AxisCopyWithImpl<_$_Check2Axis>(this, _$identity);
}

abstract class _Check2Axis extends Check2Axis {
  const factory _Check2Axis(
      {required final double axisR1,
      required final double axisR2}) = _$_Check2Axis;
  const _Check2Axis._() : super._();

  @override
  double get axisR1;
  @override
  double get axisR2;
  @override
  @JsonKey(ignore: true)
  _$$_Check2AxisCopyWith<_$_Check2Axis> get copyWith =>
      throw _privateConstructorUsedError;
}
