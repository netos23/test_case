// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  @JsonKey(name: 'explain_answer')
  String get explainAnswer => throw _privateConstructorUsedError;
  List<Variant> get variants => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_variants')
  List<Variant>? get finalVariants => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_correct')
  bool? get isCorrect => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {@JsonKey(name: 'explain_answer') String explainAnswer,
      List<Variant> variants,
      @JsonKey(name: 'final_variants') List<Variant>? finalVariants,
      String question,
      @JsonKey(name: 'is_correct') bool? isCorrect,
      String? picture,
      String? type,
      int? id});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? explainAnswer = null,
    Object? variants = null,
    Object? finalVariants = freezed,
    Object? question = null,
    Object? isCorrect = freezed,
    Object? picture = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      explainAnswer: null == explainAnswer
          ? _value.explainAnswer
          : explainAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value.variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
      finalVariants: freezed == finalVariants
          ? _value.finalVariants
          : finalVariants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'explain_answer') String explainAnswer,
      List<Variant> variants,
      @JsonKey(name: 'final_variants') List<Variant>? finalVariants,
      String question,
      @JsonKey(name: 'is_correct') bool? isCorrect,
      String? picture,
      String? type,
      int? id});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? explainAnswer = null,
    Object? variants = null,
    Object? finalVariants = freezed,
    Object? question = null,
    Object? isCorrect = freezed,
    Object? picture = freezed,
    Object? type = freezed,
    Object? id = freezed,
  }) {
    return _then(_$QuestionImpl(
      explainAnswer: null == explainAnswer
          ? _value.explainAnswer
          : explainAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      variants: null == variants
          ? _value._variants
          : variants // ignore: cast_nullable_to_non_nullable
              as List<Variant>,
      finalVariants: freezed == finalVariants
          ? _value._finalVariants
          : finalVariants // ignore: cast_nullable_to_non_nullable
              as List<Variant>?,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
class _$QuestionImpl implements _Question {
  _$QuestionImpl(
      {@JsonKey(name: 'explain_answer') required this.explainAnswer,
      required final List<Variant> variants,
      @JsonKey(name: 'final_variants') final List<Variant>? finalVariants,
      required this.question,
      @JsonKey(name: 'is_correct') this.isCorrect,
      this.picture,
      this.type,
      this.id})
      : _variants = variants,
        _finalVariants = finalVariants;

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  @JsonKey(name: 'explain_answer')
  final String explainAnswer;
  final List<Variant> _variants;
  @override
  List<Variant> get variants {
    if (_variants is EqualUnmodifiableListView) return _variants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_variants);
  }

  final List<Variant>? _finalVariants;
  @override
  @JsonKey(name: 'final_variants')
  List<Variant>? get finalVariants {
    final value = _finalVariants;
    if (value == null) return null;
    if (_finalVariants is EqualUnmodifiableListView) return _finalVariants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String question;
  @override
  @JsonKey(name: 'is_correct')
  final bool? isCorrect;
  @override
  final String? picture;
  @override
  final String? type;
  @override
  final int? id;

  @override
  String toString() {
    return 'Question(explainAnswer: $explainAnswer, variants: $variants, finalVariants: $finalVariants, question: $question, isCorrect: $isCorrect, picture: $picture, type: $type, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.explainAnswer, explainAnswer) ||
                other.explainAnswer == explainAnswer) &&
            const DeepCollectionEquality().equals(other._variants, _variants) &&
            const DeepCollectionEquality()
                .equals(other._finalVariants, _finalVariants) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      explainAnswer,
      const DeepCollectionEquality().hash(_variants),
      const DeepCollectionEquality().hash(_finalVariants),
      question,
      isCorrect,
      picture,
      type,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  factory _Question(
      {@JsonKey(name: 'explain_answer') required final String explainAnswer,
      required final List<Variant> variants,
      @JsonKey(name: 'final_variants') final List<Variant>? finalVariants,
      required final String question,
      @JsonKey(name: 'is_correct') final bool? isCorrect,
      final String? picture,
      final String? type,
      final int? id}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  @JsonKey(name: 'explain_answer')
  String get explainAnswer;
  @override
  List<Variant> get variants;
  @override
  @JsonKey(name: 'final_variants')
  List<Variant>? get finalVariants;
  @override
  String get question;
  @override
  @JsonKey(name: 'is_correct')
  bool? get isCorrect;
  @override
  String? get picture;
  @override
  String? get type;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
