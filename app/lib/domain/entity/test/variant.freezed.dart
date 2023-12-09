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
  String get title => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool? get isRight => throw _privateConstructorUsedError;
  String? get rightAnswer => throw _privateConstructorUsedError;
  bool? get userCheck => throw _privateConstructorUsedError;
  String? get userAnswer => throw _privateConstructorUsedError;

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
      {String title,
      String? picture,
      int? id,
      bool? isRight,
      String? rightAnswer,
      bool? userCheck,
      String? userAnswer});
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
    Object? title = null,
    Object? picture = freezed,
    Object? id = freezed,
    Object? isRight = freezed,
    Object? rightAnswer = freezed,
    Object? userCheck = freezed,
    Object? userAnswer = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
      userCheck: freezed == userCheck
          ? _value.userCheck
          : userCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
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
      {String title,
      String? picture,
      int? id,
      bool? isRight,
      String? rightAnswer,
      bool? userCheck,
      String? userAnswer});
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
    Object? title = null,
    Object? picture = freezed,
    Object? id = freezed,
    Object? isRight = freezed,
    Object? rightAnswer = freezed,
    Object? userCheck = freezed,
    Object? userAnswer = freezed,
  }) {
    return _then(_$VariantImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
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
      userCheck: freezed == userCheck
          ? _value.userCheck
          : userCheck // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAnswer: freezed == userAnswer
          ? _value.userAnswer
          : userAnswer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$VariantImpl implements _Variant {
  _$VariantImpl(
      {required this.title,
      this.picture,
      this.id,
      this.isRight,
      this.rightAnswer,
      this.userCheck,
      this.userAnswer});

  factory _$VariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$VariantImplFromJson(json);

  @override
  final String title;
  @override
  final String? picture;
  @override
  final int? id;
  @override
  final bool? isRight;
  @override
  final String? rightAnswer;
  @override
  final bool? userCheck;
  @override
  final String? userAnswer;

  @override
  String toString() {
    return 'Variant(title: $title, picture: $picture, id: $id, isRight: $isRight, rightAnswer: $rightAnswer, userCheck: $userCheck, userAnswer: $userAnswer)';
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
            (identical(other.userCheck, userCheck) ||
                other.userCheck == userCheck) &&
            (identical(other.userAnswer, userAnswer) ||
                other.userAnswer == userAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, picture, id, isRight,
      rightAnswer, userCheck, userAnswer);

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
      {required final String title,
      final String? picture,
      final int? id,
      final bool? isRight,
      final String? rightAnswer,
      final bool? userCheck,
      final String? userAnswer}) = _$VariantImpl;

  factory _Variant.fromJson(Map<String, dynamic> json) = _$VariantImpl.fromJson;

  @override
  String get title;
  @override
  String? get picture;
  @override
  int? get id;
  @override
  bool? get isRight;
  @override
  String? get rightAnswer;
  @override
  bool? get userCheck;
  @override
  String? get userAnswer;
  @override
  @JsonKey(ignore: true)
  _$$VariantImplCopyWith<_$VariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
