// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Sections {
  double get section1 => throw _privateConstructorUsedError;
  double get axis1 => throw _privateConstructorUsedError;
  double get section2 => throw _privateConstructorUsedError;
  double get axis2 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionsCopyWith<Sections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsCopyWith<$Res> {
  factory $SectionsCopyWith(Sections value, $Res Function(Sections) then) =
      _$SectionsCopyWithImpl<$Res, Sections>;
  @useResult
  $Res call({double section1, double axis1, double section2, double axis2});
}

/// @nodoc
class _$SectionsCopyWithImpl<$Res, $Val extends Sections>
    implements $SectionsCopyWith<$Res> {
  _$SectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section1 = null,
    Object? axis1 = null,
    Object? section2 = null,
    Object? axis2 = null,
  }) {
    return _then(_value.copyWith(
      section1: null == section1
          ? _value.section1
          : section1 // ignore: cast_nullable_to_non_nullable
              as double,
      axis1: null == axis1
          ? _value.axis1
          : axis1 // ignore: cast_nullable_to_non_nullable
              as double,
      section2: null == section2
          ? _value.section2
          : section2 // ignore: cast_nullable_to_non_nullable
              as double,
      axis2: null == axis2
          ? _value.axis2
          : axis2 // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SectionsCopyWith<$Res> implements $SectionsCopyWith<$Res> {
  factory _$$_SectionsCopyWith(
          _$_Sections value, $Res Function(_$_Sections) then) =
      __$$_SectionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double section1, double axis1, double section2, double axis2});
}

/// @nodoc
class __$$_SectionsCopyWithImpl<$Res>
    extends _$SectionsCopyWithImpl<$Res, _$_Sections>
    implements _$$_SectionsCopyWith<$Res> {
  __$$_SectionsCopyWithImpl(
      _$_Sections _value, $Res Function(_$_Sections) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section1 = null,
    Object? axis1 = null,
    Object? section2 = null,
    Object? axis2 = null,
  }) {
    return _then(_$_Sections(
      section1: null == section1
          ? _value.section1
          : section1 // ignore: cast_nullable_to_non_nullable
              as double,
      axis1: null == axis1
          ? _value.axis1
          : axis1 // ignore: cast_nullable_to_non_nullable
              as double,
      section2: null == section2
          ? _value.section2
          : section2 // ignore: cast_nullable_to_non_nullable
              as double,
      axis2: null == axis2
          ? _value.axis2
          : axis2 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_Sections extends _Sections {
  const _$_Sections(
      {required this.section1,
      required this.axis1,
      required this.section2,
      required this.axis2})
      : super._();

  @override
  final double section1;
  @override
  final double axis1;
  @override
  final double section2;
  @override
  final double axis2;

  @override
  String toString() {
    return 'Sections(section1: $section1, axis1: $axis1, section2: $section2, axis2: $axis2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sections &&
            (identical(other.section1, section1) ||
                other.section1 == section1) &&
            (identical(other.axis1, axis1) || other.axis1 == axis1) &&
            (identical(other.section2, section2) ||
                other.section2 == section2) &&
            (identical(other.axis2, axis2) || other.axis2 == axis2));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, section1, axis1, section2, axis2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SectionsCopyWith<_$_Sections> get copyWith =>
      __$$_SectionsCopyWithImpl<_$_Sections>(this, _$identity);
}

abstract class _Sections extends Sections {
  const factory _Sections(
      {required final double section1,
      required final double axis1,
      required final double section2,
      required final double axis2}) = _$_Sections;
  const _Sections._() : super._();

  @override
  double get section1;
  @override
  double get axis1;
  @override
  double get section2;
  @override
  double get axis2;
  @override
  @JsonKey(ignore: true)
  _$$_SectionsCopyWith<_$_Sections> get copyWith =>
      throw _privateConstructorUsedError;
}
