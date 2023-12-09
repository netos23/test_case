// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultQuestion _$ResultQuestionFromJson(Map<String, dynamic> json) {
  return _ResultQuestion.fromJson(json);
}

/// @nodoc
mixin _$ResultQuestion {
  int get id => throw _privateConstructorUsedError;
  List<ResultVariant> get variants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultQuestionCopyWith<ResultQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultQuestionCopyWith<$Res> {
  factory $ResultQuestionCopyWith(
          ResultQuestion value, $Res Function(ResultQuestion) then) =
      _$ResultQuestionCopyWithImpl<$Res, ResultQuestion>;
  @useResult
  $Res call({int id, List<ResultVariant> variants});
}

/// @nodoc
class _$ResultQuestionCopyWithImpl<$Res, $Val extends ResultQuestion>
    implements $ResultQuestionCopyWith<$Res> {
  _$ResultQuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variants = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ResultVariant>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultQuestionImplCopyWith<$Res>
    implements $ResultQuestionCopyWith<$Res> {
  factory _$$ResultQuestionImplCopyWith(_$ResultQuestionImpl value,
          $Res Function(_$ResultQuestionImpl) then) =
      __$$ResultQuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<ResultVariant> variants});
}

/// @nodoc
class __$$ResultQuestionImplCopyWithImpl<$Res>
    extends _$ResultQuestionCopyWithImpl<$Res, _$ResultQuestionImpl>
    implements _$$ResultQuestionImplCopyWith<$Res> {
  __$$ResultQuestionImplCopyWithImpl(
      _$ResultQuestionImpl _value, $Res Function(_$ResultQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? variants = null,
  }) {
    return _then(_$ResultQuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<ResultVariant>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultQuestionImpl implements _ResultQuestion {
  _$ResultQuestionImpl(
      {required this.id, required final List<ResultVariant> variants})
      : _variants = variants;

  factory _$ResultQuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultQuestionImplFromJson(json);

  @override
  final int id;
  final List<ResultVariant> _variants;
  @override
  List<ResultVariant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  @override
  String toString() {
    return 'ResultQuestion(id: $id, variants: $variants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultQuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._variants, _variants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_variants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultQuestionImplCopyWith<_$ResultQuestionImpl> get copyWith =>
      __$$ResultQuestionImplCopyWithImpl<_$ResultQuestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultQuestionImplToJson(
      this,
    );
  }
}

abstract class _ResultQuestion implements ResultQuestion {
  factory _ResultQuestion(
      {required final int id,
      required final List<ResultVariant> variants}) = _$ResultQuestionImpl;

  factory _ResultQuestion.fromJson(Map<String, dynamic> json) =
      _$ResultQuestionImpl.fromJson;

  @override
  int get id;
  @override
  List<ResultVariant> get variants;
  @override
  @JsonKey(ignore: true)
  _$$ResultQuestionImplCopyWith<_$ResultQuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
