// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lens_material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LensMaterial {
  String get name => throw _privateConstructorUsedError;
  String get manufacturer => throw _privateConstructorUsedError;
  String? get USAN => throw _privateConstructorUsedError;
  String? get classification => throw _privateConstructorUsedError;
  List<String> get distributor => throw _privateConstructorUsedError;
  double get n => throw _privateConstructorUsedError;
  double get dk => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LensMaterialCopyWith<LensMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LensMaterialCopyWith<$Res> {
  factory $LensMaterialCopyWith(
          LensMaterial value, $Res Function(LensMaterial) then) =
      _$LensMaterialCopyWithImpl<$Res, LensMaterial>;
  @useResult
  $Res call(
      {String name,
      String manufacturer,
      String? USAN,
      String? classification,
      List<String> distributor,
      double n,
      double dk});
}

/// @nodoc
class _$LensMaterialCopyWithImpl<$Res, $Val extends LensMaterial>
    implements $LensMaterialCopyWith<$Res> {
  _$LensMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? manufacturer = null,
    Object? USAN = freezed,
    Object? classification = freezed,
    Object? distributor = null,
    Object? n = null,
    Object? dk = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      USAN: freezed == USAN
          ? _value.USAN
          : USAN // ignore: cast_nullable_to_non_nullable
              as String?,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String?,
      distributor: null == distributor
          ? _value.distributor
          : distributor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as double,
      dk: null == dk
          ? _value.dk
          : dk // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LensMaterialCopyWith<$Res>
    implements $LensMaterialCopyWith<$Res> {
  factory _$$_LensMaterialCopyWith(
          _$_LensMaterial value, $Res Function(_$_LensMaterial) then) =
      __$$_LensMaterialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String manufacturer,
      String? USAN,
      String? classification,
      List<String> distributor,
      double n,
      double dk});
}

/// @nodoc
class __$$_LensMaterialCopyWithImpl<$Res>
    extends _$LensMaterialCopyWithImpl<$Res, _$_LensMaterial>
    implements _$$_LensMaterialCopyWith<$Res> {
  __$$_LensMaterialCopyWithImpl(
      _$_LensMaterial _value, $Res Function(_$_LensMaterial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? manufacturer = null,
    Object? USAN = freezed,
    Object? classification = freezed,
    Object? distributor = null,
    Object? n = null,
    Object? dk = null,
  }) {
    return _then(_$_LensMaterial(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      USAN: freezed == USAN
          ? _value.USAN
          : USAN // ignore: cast_nullable_to_non_nullable
              as String?,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as String?,
      distributor: null == distributor
          ? _value._distributor
          : distributor // ignore: cast_nullable_to_non_nullable
              as List<String>,
      n: null == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as double,
      dk: null == dk
          ? _value.dk
          : dk // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_LensMaterial extends _LensMaterial {
  const _$_LensMaterial(
      {required this.name,
      required this.manufacturer,
      this.USAN,
      this.classification,
      required final List<String> distributor,
      required this.n,
      required this.dk})
      : _distributor = distributor,
        super._();

  @override
  final String name;
  @override
  final String manufacturer;
  @override
  final String? USAN;
  @override
  final String? classification;
  final List<String> _distributor;
  @override
  List<String> get distributor {
    if (_distributor is EqualUnmodifiableListView) return _distributor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_distributor);
  }

  @override
  final double n;
  @override
  final double dk;

  @override
  String toString() {
    return 'LensMaterial(name: $name, manufacturer: $manufacturer, USAN: $USAN, classification: $classification, distributor: $distributor, n: $n, dk: $dk)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LensMaterial &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.USAN, USAN) || other.USAN == USAN) &&
            (identical(other.classification, classification) ||
                other.classification == classification) &&
            const DeepCollectionEquality()
                .equals(other._distributor, _distributor) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.dk, dk) || other.dk == dk));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, manufacturer, USAN,
      classification, const DeepCollectionEquality().hash(_distributor), n, dk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LensMaterialCopyWith<_$_LensMaterial> get copyWith =>
      __$$_LensMaterialCopyWithImpl<_$_LensMaterial>(this, _$identity);
}

abstract class _LensMaterial extends LensMaterial {
  const factory _LensMaterial(
      {required final String name,
      required final String manufacturer,
      final String? USAN,
      final String? classification,
      required final List<String> distributor,
      required final double n,
      required final double dk}) = _$_LensMaterial;
  const _LensMaterial._() : super._();

  @override
  String get name;
  @override
  String get manufacturer;
  @override
  String? get USAN;
  @override
  String? get classification;
  @override
  List<String> get distributor;
  @override
  double get n;
  @override
  double get dk;
  @override
  @JsonKey(ignore: true)
  _$$_LensMaterialCopyWith<_$_LensMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}
