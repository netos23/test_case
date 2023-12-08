// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestDetail _$TestDetailFromJson(Map<String, dynamic> json) {
  return _TestDetail.fromJson(json);
}

/// @nodoc
mixin _$TestDetail {
  int? get id => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'for_age')
  String? get forAge => throw _privateConstructorUsedError;
  String? get complexity => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  int? get requiredScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestDetailCopyWith<TestDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestDetailCopyWith<$Res> {
  factory $TestDetailCopyWith(
          TestDetail value, $Res Function(TestDetail) then) =
      _$TestDetailCopyWithImpl<$Res, TestDetail>;
  @useResult
  $Res call(
      {int? id,
      List<Question> questions,
      String description,
      String name,
      String topic,
      String? picture,
      @JsonKey(name: 'for_age') String? forAge,
      String? complexity,
      @JsonKey(name: 'created_at') String? createdAt,
      int? requiredScore});
}

/// @nodoc
class _$TestDetailCopyWithImpl<$Res, $Val extends TestDetail>
    implements $TestDetailCopyWith<$Res> {
  _$TestDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questions = null,
    Object? description = null,
    Object? name = null,
    Object? topic = null,
    Object? picture = freezed,
    Object? forAge = freezed,
    Object? complexity = freezed,
    Object? createdAt = freezed,
    Object? requiredScore = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      forAge: freezed == forAge
          ? _value.forAge
          : forAge // ignore: cast_nullable_to_non_nullable
              as String?,
      complexity: freezed == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredScore: freezed == requiredScore
          ? _value.requiredScore
          : requiredScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestDetailImplCopyWith<$Res>
    implements $TestDetailCopyWith<$Res> {
  factory _$$TestDetailImplCopyWith(
          _$TestDetailImpl value, $Res Function(_$TestDetailImpl) then) =
      __$$TestDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      List<Question> questions,
      String description,
      String name,
      String topic,
      String? picture,
      @JsonKey(name: 'for_age') String? forAge,
      String? complexity,
      @JsonKey(name: 'created_at') String? createdAt,
      int? requiredScore});
}

/// @nodoc
class __$$TestDetailImplCopyWithImpl<$Res>
    extends _$TestDetailCopyWithImpl<$Res, _$TestDetailImpl>
    implements _$$TestDetailImplCopyWith<$Res> {
  __$$TestDetailImplCopyWithImpl(
      _$TestDetailImpl _value, $Res Function(_$TestDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? questions = null,
    Object? description = null,
    Object? name = null,
    Object? topic = null,
    Object? picture = freezed,
    Object? forAge = freezed,
    Object? complexity = freezed,
    Object? createdAt = freezed,
    Object? requiredScore = freezed,
  }) {
    return _then(_$TestDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      forAge: freezed == forAge
          ? _value.forAge
          : forAge // ignore: cast_nullable_to_non_nullable
              as String?,
      complexity: freezed == complexity
          ? _value.complexity
          : complexity // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredScore: freezed == requiredScore
          ? _value.requiredScore
          : requiredScore // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestDetailImpl implements _TestDetail {
  _$TestDetailImpl(
      {this.id,
      required final List<Question> questions,
      required this.description,
      required this.name,
      required this.topic,
      this.picture,
      @JsonKey(name: 'for_age') this.forAge,
      this.complexity,
      @JsonKey(name: 'created_at') this.createdAt,
      this.requiredScore})
      : _questions = questions;

  factory _$TestDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestDetailImplFromJson(json);

  @override
  final int? id;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final String description;
  @override
  final String name;
  @override
  final String topic;
  @override
  final String? picture;
  @override
  @JsonKey(name: 'for_age')
  final String? forAge;
  @override
  final String? complexity;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  final int? requiredScore;

  @override
  String toString() {
    return 'TestDetail(id: $id, questions: $questions, description: $description, name: $name, topic: $topic, picture: $picture, forAge: $forAge, complexity: $complexity, createdAt: $createdAt, requiredScore: $requiredScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.forAge, forAge) || other.forAge == forAge) &&
            (identical(other.complexity, complexity) ||
                other.complexity == complexity) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.requiredScore, requiredScore) ||
                other.requiredScore == requiredScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_questions),
      description,
      name,
      topic,
      picture,
      forAge,
      complexity,
      createdAt,
      requiredScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestDetailImplCopyWith<_$TestDetailImpl> get copyWith =>
      __$$TestDetailImplCopyWithImpl<_$TestDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestDetailImplToJson(
      this,
    );
  }
}

abstract class _TestDetail implements TestDetail {
  factory _TestDetail(
      {final int? id,
      required final List<Question> questions,
      required final String description,
      required final String name,
      required final String topic,
      final String? picture,
      @JsonKey(name: 'for_age') final String? forAge,
      final String? complexity,
      @JsonKey(name: 'created_at') final String? createdAt,
      final int? requiredScore}) = _$TestDetailImpl;

  factory _TestDetail.fromJson(Map<String, dynamic> json) =
      _$TestDetailImpl.fromJson;

  @override
  int? get id;
  @override
  List<Question> get questions;
  @override
  String get description;
  @override
  String get name;
  @override
  String get topic;
  @override
  String? get picture;
  @override
  @JsonKey(name: 'for_age')
  String? get forAge;
  @override
  String? get complexity;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  int? get requiredScore;
  @override
  @JsonKey(ignore: true)
  _$$TestDetailImplCopyWith<_$TestDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
