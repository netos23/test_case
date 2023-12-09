// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultVariant _$ResultVariantFromJson(Map<String, dynamic> json) {
  return _ResultVariant.fromJson(json);
}

/// @nodoc
mixin _$ResultVariant {
  int get id => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  bool? get checked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultVariantCopyWith<ResultVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultVariantCopyWith<$Res> {
  factory $ResultVariantCopyWith(
          ResultVariant value, $Res Function(ResultVariant) then) =
      _$ResultVariantCopyWithImpl<$Res, ResultVariant>;
  @useResult
  $Res call({int id, String? answer, bool? checked});
}

/// @nodoc
class _$ResultVariantCopyWithImpl<$Res, $Val extends ResultVariant>
    implements $ResultVariantCopyWith<$Res> {
  _$ResultVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answer = freezed,
    Object? checked = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      checked: freezed == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultVariantImplCopyWith<$Res>
    implements $ResultVariantCopyWith<$Res> {
  factory _$$ResultVariantImplCopyWith(
          _$ResultVariantImpl value, $Res Function(_$ResultVariantImpl) then) =
      __$$ResultVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? answer, bool? checked});
}

/// @nodoc
class __$$ResultVariantImplCopyWithImpl<$Res>
    extends _$ResultVariantCopyWithImpl<$Res, _$ResultVariantImpl>
    implements _$$ResultVariantImplCopyWith<$Res> {
  __$$ResultVariantImplCopyWithImpl(
      _$ResultVariantImpl _value, $Res Function(_$ResultVariantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answer = freezed,
    Object? checked = freezed,
  }) {
    return _then(_$ResultVariantImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      checked: freezed == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultVariantImpl implements _ResultVariant {
  _$ResultVariantImpl({required this.id, this.answer, this.checked});

  factory _$ResultVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultVariantImplFromJson(json);

  @override
  final int id;
  @override
  final String? answer;
  @override
  final bool? checked;

  @override
  String toString() {
    return 'ResultVariant(id: $id, answer: $answer, checked: $checked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultVariantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.checked, checked) || other.checked == checked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, answer, checked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultVariantImplCopyWith<_$ResultVariantImpl> get copyWith =>
      __$$ResultVariantImplCopyWithImpl<_$ResultVariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultVariantImplToJson(
      this,
    );
  }
}

abstract class _ResultVariant implements ResultVariant {
  factory _ResultVariant(
      {required final int id,
      final String? answer,
      final bool? checked}) = _$ResultVariantImpl;

  factory _ResultVariant.fromJson(Map<String, dynamic> json) =
      _$ResultVariantImpl.fromJson;

  @override
  int get id;
  @override
  String? get answer;
  @override
  bool? get checked;
  @override
  @JsonKey(ignore: true)
  _$$ResultVariantImplCopyWith<_$ResultVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
