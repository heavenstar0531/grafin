// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sphere_cylinder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SphereCylinder {
  double get sphere => throw _privateConstructorUsedError;
  double get cylinder => throw _privateConstructorUsedError;
  double get axis => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SphereCylinderCopyWith<SphereCylinder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SphereCylinderCopyWith<$Res> {
  factory $SphereCylinderCopyWith(
          SphereCylinder value, $Res Function(SphereCylinder) then) =
      _$SphereCylinderCopyWithImpl<$Res, SphereCylinder>;
  @useResult
  $Res call({double sphere, double cylinder, double axis});
}

/// @nodoc
class _$SphereCylinderCopyWithImpl<$Res, $Val extends SphereCylinder>
    implements $SphereCylinderCopyWith<$Res> {
  _$SphereCylinderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sphere = null,
    Object? cylinder = null,
    Object? axis = null,
  }) {
    return _then(_value.copyWith(
      sphere: null == sphere
          ? _value.sphere
          : sphere // ignore: cast_nullable_to_non_nullable
              as double,
      cylinder: null == cylinder
          ? _value.cylinder
          : cylinder // ignore: cast_nullable_to_non_nullable
              as double,
      axis: null == axis
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SphereCylinderCopyWith<$Res>
    implements $SphereCylinderCopyWith<$Res> {
  factory _$$_SphereCylinderCopyWith(
          _$_SphereCylinder value, $Res Function(_$_SphereCylinder) then) =
      __$$_SphereCylinderCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double sphere, double cylinder, double axis});
}

/// @nodoc
class __$$_SphereCylinderCopyWithImpl<$Res>
    extends _$SphereCylinderCopyWithImpl<$Res, _$_SphereCylinder>
    implements _$$_SphereCylinderCopyWith<$Res> {
  __$$_SphereCylinderCopyWithImpl(
      _$_SphereCylinder _value, $Res Function(_$_SphereCylinder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sphere = null,
    Object? cylinder = null,
    Object? axis = null,
  }) {
    return _then(_$_SphereCylinder(
      sphere: null == sphere
          ? _value.sphere
          : sphere // ignore: cast_nullable_to_non_nullable
              as double,
      cylinder: null == cylinder
          ? _value.cylinder
          : cylinder // ignore: cast_nullable_to_non_nullable
              as double,
      axis: null == axis
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SphereCylinder extends _SphereCylinder {
  const _$_SphereCylinder(
      {required this.sphere, required this.cylinder, required this.axis})
      : super._();

  @override
  final double sphere;
  @override
  final double cylinder;
  @override
  final double axis;

  @override
  String toString() {
    return 'SphereCylinder(sphere: $sphere, cylinder: $cylinder, axis: $axis)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SphereCylinder &&
            (identical(other.sphere, sphere) || other.sphere == sphere) &&
            (identical(other.cylinder, cylinder) ||
                other.cylinder == cylinder) &&
            (identical(other.axis, axis) || other.axis == axis));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sphere, cylinder, axis);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SphereCylinderCopyWith<_$_SphereCylinder> get copyWith =>
      __$$_SphereCylinderCopyWithImpl<_$_SphereCylinder>(this, _$identity);
}

abstract class _SphereCylinder extends SphereCylinder {
  const factory _SphereCylinder(
      {required final double sphere,
      required final double cylinder,
      required final double axis}) = _$_SphereCylinder;
  const _SphereCylinder._() : super._();

  @override
  double get sphere;
  @override
  double get cylinder;
  @override
  double get axis;
  @override
  @JsonKey(ignore: true)
  _$$_SphereCylinderCopyWith<_$_SphereCylinder> get copyWith =>
      throw _privateConstructorUsedError;
}
