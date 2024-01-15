// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diopter_2_matrix.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Diopter2Matrix {
  double get fx => throw _privateConstructorUsedError;
  double get fy => throw _privateConstructorUsedError;
  double get fxy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Diopter2MatrixCopyWith<Diopter2Matrix> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Diopter2MatrixCopyWith<$Res> {
  factory $Diopter2MatrixCopyWith(
          Diopter2Matrix value, $Res Function(Diopter2Matrix) then) =
      _$Diopter2MatrixCopyWithImpl<$Res, Diopter2Matrix>;
  @useResult
  $Res call({double fx, double fy, double fxy});
}

/// @nodoc
class _$Diopter2MatrixCopyWithImpl<$Res, $Val extends Diopter2Matrix>
    implements $Diopter2MatrixCopyWith<$Res> {
  _$Diopter2MatrixCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fx = null,
    Object? fy = null,
    Object? fxy = null,
  }) {
    return _then(_value.copyWith(
      fx: null == fx
          ? _value.fx
          : fx // ignore: cast_nullable_to_non_nullable
              as double,
      fy: null == fy
          ? _value.fy
          : fy // ignore: cast_nullable_to_non_nullable
              as double,
      fxy: null == fxy
          ? _value.fxy
          : fxy // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_Diopter2MatrixCopyWith<$Res>
    implements $Diopter2MatrixCopyWith<$Res> {
  factory _$$_Diopter2MatrixCopyWith(
          _$_Diopter2Matrix value, $Res Function(_$_Diopter2Matrix) then) =
      __$$_Diopter2MatrixCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double fx, double fy, double fxy});
}

/// @nodoc
class __$$_Diopter2MatrixCopyWithImpl<$Res>
    extends _$Diopter2MatrixCopyWithImpl<$Res, _$_Diopter2Matrix>
    implements _$$_Diopter2MatrixCopyWith<$Res> {
  __$$_Diopter2MatrixCopyWithImpl(
      _$_Diopter2Matrix _value, $Res Function(_$_Diopter2Matrix) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fx = null,
    Object? fy = null,
    Object? fxy = null,
  }) {
    return _then(_$_Diopter2Matrix(
      fx: null == fx
          ? _value.fx
          : fx // ignore: cast_nullable_to_non_nullable
              as double,
      fy: null == fy
          ? _value.fy
          : fy // ignore: cast_nullable_to_non_nullable
              as double,
      fxy: null == fxy
          ? _value.fxy
          : fxy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Diopter2Matrix extends _Diopter2Matrix {
  const _$_Diopter2Matrix(
      {required this.fx, required this.fy, required this.fxy})
      : super._();

  @override
  final double fx;
  @override
  final double fy;
  @override
  final double fxy;

  @override
  String toString() {
    return 'Diopter2Matrix(fx: $fx, fy: $fy, fxy: $fxy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Diopter2Matrix &&
            (identical(other.fx, fx) || other.fx == fx) &&
            (identical(other.fy, fy) || other.fy == fy) &&
            (identical(other.fxy, fxy) || other.fxy == fxy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fx, fy, fxy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_Diopter2MatrixCopyWith<_$_Diopter2Matrix> get copyWith =>
      __$$_Diopter2MatrixCopyWithImpl<_$_Diopter2Matrix>(this, _$identity);
}

abstract class _Diopter2Matrix extends Diopter2Matrix {
  const factory _Diopter2Matrix(
      {required final double fx,
      required final double fy,
      required final double fxy}) = _$_Diopter2Matrix;
  const _Diopter2Matrix._() : super._();

  @override
  double get fx;
  @override
  double get fy;
  @override
  double get fxy;
  @override
  @JsonKey(ignore: true)
  _$$_Diopter2MatrixCopyWith<_$_Diopter2Matrix> get copyWith =>
      throw _privateConstructorUsedError;
}
