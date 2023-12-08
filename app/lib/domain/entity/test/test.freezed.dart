// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Test _$TestFromJson(Map<String, dynamic> json) {
  return _Test.fromJson(json);
}

/// @nodoc
mixin _$Test {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  @JsonKey(name: 'for_age')
  String? get forAge => throw _privateConstructorUsedError;
  String? get complexity => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  int? get requiredScore => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestCopyWith<Test> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestCopyWith<$Res> {
  factory $TestCopyWith(Test value, $Res Function(Test) then) =
      _$TestCopyWithImpl<$Res, Test>;
  @useResult
  $Res call(
      {int id,
      String name,
      String topic,
      String description,
      String? picture,
      @JsonKey(name: 'for_age') String? forAge,
      String? complexity,
      @JsonKey(name: 'created_at') String? createdAt,
      int? requiredScore});
}

/// @nodoc
class _$TestCopyWithImpl<$Res, $Val extends Test>
    implements $TestCopyWith<$Res> {
  _$TestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? topic = null,
    Object? description = null,
    Object? picture = freezed,
    Object? forAge = freezed,
    Object? complexity = freezed,
    Object? createdAt = freezed,
    Object? requiredScore = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TestImplCopyWith<$Res> implements $TestCopyWith<$Res> {
  factory _$$TestImplCopyWith(
          _$TestImpl value, $Res Function(_$TestImpl) then) =
      __$$TestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String topic,
      String description,
      String? picture,
      @JsonKey(name: 'for_age') String? forAge,
      String? complexity,
      @JsonKey(name: 'created_at') String? createdAt,
      int? requiredScore});
}

/// @nodoc
class __$$TestImplCopyWithImpl<$Res>
    extends _$TestCopyWithImpl<$Res, _$TestImpl>
    implements _$$TestImplCopyWith<$Res> {
  __$$TestImplCopyWithImpl(_$TestImpl _value, $Res Function(_$TestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? topic = null,
    Object? description = null,
    Object? picture = freezed,
    Object? forAge = freezed,
    Object? complexity = freezed,
    Object? createdAt = freezed,
    Object? requiredScore = freezed,
  }) {
    return _then(_$TestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$TestImpl implements _Test {
  _$TestImpl(
      {required this.id,
      required this.name,
      required this.topic,
      required this.description,
      this.picture,
      @JsonKey(name: 'for_age') this.forAge,
      this.complexity,
      @JsonKey(name: 'created_at') this.createdAt,
      this.requiredScore});

  factory _$TestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String topic;
  @override
  final String description;
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
    return 'Test(id: $id, name: $name, topic: $topic, description: $description, picture: $picture, forAge: $forAge, complexity: $complexity, createdAt: $createdAt, requiredScore: $requiredScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.description, description) ||
                other.description == description) &&
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
  int get hashCode => Object.hash(runtimeType, id, name, topic, description,
      picture, forAge, complexity, createdAt, requiredScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestImplCopyWith<_$TestImpl> get copyWith =>
      __$$TestImplCopyWithImpl<_$TestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestImplToJson(
      this,
    );
  }
}

abstract class _Test implements Test {
  factory _Test(
      {required final int id,
      required final String name,
      required final String topic,
      required final String description,
      final String? picture,
      @JsonKey(name: 'for_age') final String? forAge,
      final String? complexity,
      @JsonKey(name: 'created_at') final String? createdAt,
      final int? requiredScore}) = _$TestImpl;

  factory _Test.fromJson(Map<String, dynamic> json) = _$TestImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get topic;
  @override
  String get description;
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
  _$$TestImplCopyWith<_$TestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
