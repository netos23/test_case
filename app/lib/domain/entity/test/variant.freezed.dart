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
  String? get title => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_right')
  bool? get isRight => throw _privateConstructorUsedError;
  @JsonKey(name: 'right_answer')
  String? get rightAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_correct')
  bool? get isCorrect => throw _privateConstructorUsedError;
  bool? get checked => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

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
      {String? title,
      String? picture,
      int? id,
      @JsonKey(name: 'is_right') bool? isRight,
      @JsonKey(name: 'right_answer') String? rightAnswer,
      @JsonKey(name: 'is_correct') bool? isCorrect,
      bool? checked,
      String? answer});
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
    Object? title = freezed,
    Object? picture = freezed,
    Object? id = freezed,
    Object? isRight = freezed,
    Object? rightAnswer = freezed,
    Object? isCorrect = freezed,
    Object? checked = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isRight: freezed == isRight
          ? _value.isRight
          : isRight // ignore: cast_nullable_to_non_nullable
              as bool?,
      rightAnswer: freezed == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      checked: freezed == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String? title,
      String? picture,
      int? id,
      @JsonKey(name: 'is_right') bool? isRight,
      @JsonKey(name: 'right_answer') String? rightAnswer,
      @JsonKey(name: 'is_correct') bool? isCorrect,
      bool? checked,
      String? answer});
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
    Object? title = freezed,
    Object? picture = freezed,
    Object? id = freezed,
    Object? isRight = freezed,
    Object? rightAnswer = freezed,
    Object? isCorrect = freezed,
    Object? checked = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$VariantImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      isRight: freezed == isRight
          ? _value.isRight
          : isRight // ignore: cast_nullable_to_non_nullable
              as bool?,
      rightAnswer: freezed == rightAnswer
          ? _value.rightAnswer
          : rightAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      checked: freezed == checked
          ? _value.checked
          : checked // ignore: cast_nullable_to_non_nullable
              as bool?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$VariantImpl implements _Variant {
  _$VariantImpl(
      {this.title,
      this.picture,
      this.id,
      @JsonKey(name: 'is_right') this.isRight,
      @JsonKey(name: 'right_answer') this.rightAnswer,
      @JsonKey(name: 'is_correct') this.isCorrect,
      this.checked,
      this.answer});

  factory _$VariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantImplFromJson(json);

  @override
  final String? title;
  @override
  final String? picture;
  @override
  final int? id;
  @override
  @JsonKey(name: 'is_right')
  final bool? isRight;
  @override
  @JsonKey(name: 'right_answer')
  final String? rightAnswer;
  @override
  @JsonKey(name: 'is_correct')
  final bool? isCorrect;
  @override
  final bool? checked;
  @override
  final String? answer;

  @override
  String toString() {
    return 'Variant(title: $title, picture: $picture, id: $id, isRight: $isRight, rightAnswer: $rightAnswer, isCorrect: $isCorrect, checked: $checked, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariantImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isRight, isRight) || other.isRight == isRight) &&
            (identical(other.rightAnswer, rightAnswer) ||
                other.rightAnswer == rightAnswer) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.checked, checked) || other.checked == checked) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, picture, id, isRight,
      rightAnswer, isCorrect, checked, answer);

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
      {final String? title,
      final String? picture,
      final int? id,
      @JsonKey(name: 'is_right') final bool? isRight,
      @JsonKey(name: 'right_answer') final String? rightAnswer,
      @JsonKey(name: 'is_correct') final bool? isCorrect,
      final bool? checked,
      final String? answer}) = _$VariantImpl;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$VariantImpl.fromJson;

  @override
  String? get title;
  @override
  String? get picture;
  @override
  int? get id;
  @override
  @JsonKey(name: 'is_right')
  bool? get isRight;
  @override
  @JsonKey(name: 'right_answer')
  String? get rightAnswer;
  @override
  @JsonKey(name: 'is_correct')
  bool? get isCorrect;
  @override
  bool? get checked;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
