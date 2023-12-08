// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Variant _$VariantFromJson(Map<String, dynamic> json) {
  return _Variant.fromJson(json);
}

/// @nodoc
mixin _$Variant {
  @JsonKey(name: 'question')
  int get questionId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_right')
  bool? get isRight => throw _privateConstructorUsedError;
  @JsonKey(name: 'right_answer')
  String? get rightAnswer => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VariantCopyWith<Variant> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariantCopyWith<$Res> {
  factory $VariantCopyWith(Variant value, $Res Function(Variant) then) =
      _$VariantCopyWithImpl<$Res, Variant>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question') int questionId,
      String title,
      String? picture,
      @JsonKey(name: 'is_right') bool? isRight,
      @JsonKey(name: 'right_answer') String? rightAnswer,
      int? id});
}

/// @nodoc
class _$VariantCopyWithImpl<$Res, $Val extends Variant>
    implements $VariantCopyWith<$Res> {
  _$VariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? title = null,
    Object? picture = freezed,
    Object? isRight = freezed,
    Object? rightAnswer = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      isRight: freezed == isRight
          ? _value.isRight
          : isRight // ignore: cast_nullable_to_non_nullable
              as bool?,
      rightAnswer: freezed == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariantImplCopyWith<$Res> implements $VariantCopyWith<$Res> {
  factory _$$VariantImplCopyWith(
          _$VariantImpl value, $Res Function(_$VariantImpl) then) =
      __$$VariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question') int questionId,
      String title,
      String? picture,
      @JsonKey(name: 'is_right') bool? isRight,
      @JsonKey(name: 'right_answer') String? rightAnswer,
      int? id});
}

/// @nodoc
class __$$VariantImplCopyWithImpl<$Res>
    extends _$VariantCopyWithImpl<$Res, _$VariantImpl>
    implements _$$VariantImplCopyWith<$Res> {
  __$$VariantImplCopyWithImpl(
      _$VariantImpl _value, $Res Function(_$VariantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
    Object? title = null,
    Object? picture = freezed,
    Object? isRight = freezed,
    Object? rightAnswer = freezed,
    Object? id = freezed,
  }) {
    return _then(_$VariantImpl(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      isRight: freezed == isRight
          ? _value.isRight
          : isRight // ignore: cast_nullable_to_non_nullable
              as bool?,
      rightAnswer: freezed == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$VariantImpl implements _Variant {
  _$VariantImpl(
      {@JsonKey(name: 'question') required this.questionId,
      required this.title,
      this.picture,
      @JsonKey(name: 'is_right') this.isRight,
      @JsonKey(name: 'right_answer') this.rightAnswer,
      this.id});

  factory _$VariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantImplFromJson(json);

  @override
  @JsonKey(name: 'question')
  final int questionId;
  @override
  final String title;
  @override
  final String? picture;
  @override
  @JsonKey(name: 'is_right')
  final bool? isRight;
  @override
  @JsonKey(name: 'right_answer')
  final String? rightAnswer;
  @override
  final int? id;

  @override
  String toString() {
    return 'Variant(questionId: $questionId, title: $title, picture: $picture, isRight: $isRight, rightAnswer: $rightAnswer, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantImpl &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.isRight, isRight) || other.isRight == isRight) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, questionId, title, picture, isRight, rightAnswer, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      __$$VariantImplCopyWithImpl<_$VariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VariantImplToJson(
      this,
    );
  }
}

abstract class _Variant implements Variant {
  factory _Variant(
      {@JsonKey(name: 'question') required final int questionId,
      required final String title,
      final String? picture,
      @JsonKey(name: 'is_right') final bool? isRight,
      @JsonKey(name: 'right_answer') final String? rightAnswer,
      final int? id}) = _$VariantImpl;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$VariantImpl.fromJson;

  @override
  @JsonKey(name: 'question')
  int get questionId;
  @override
  String get title;
  @override
  String? get picture;
  @override
  @JsonKey(name: 'is_right')
  bool? get isRight;
  @override
  @JsonKey(name: 'right_answer')
  String? get rightAnswer;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
