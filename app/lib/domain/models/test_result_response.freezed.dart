// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_result_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TestResultResponse _$TestResultResponseFromJson(Map<String, dynamic> json) {
  return _TestResultResponse.fromJson(json);
}

/// @nodoc
mixin _$TestResultResponse {
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  String get test => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestResultResponseCopyWith<TestResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultResponseCopyWith<$Res> {
  factory $TestResultResponseCopyWith(
          TestResultResponse value, $Res Function(TestResultResponse) then) =
      _$TestResultResponseCopyWithImpl<$Res, TestResultResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') String createdAt, String test, int score});
}

/// @nodoc
class _$TestResultResponseCopyWithImpl<$Res, $Val extends TestResultResponse>
    implements $TestResultResponseCopyWith<$Res> {
  _$TestResultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? test = null,
    Object? score = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestResultResponseImplCopyWith<$Res>
    implements $TestResultResponseCopyWith<$Res> {
  factory _$$TestResultResponseImplCopyWith(_$TestResultResponseImpl value,
          $Res Function(_$TestResultResponseImpl) then) =
      __$$TestResultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') String createdAt, String test, int score});
}

/// @nodoc
class __$$TestResultResponseImplCopyWithImpl<$Res>
    extends _$TestResultResponseCopyWithImpl<$Res, _$TestResultResponseImpl>
    implements _$$TestResultResponseImplCopyWith<$Res> {
  __$$TestResultResponseImplCopyWithImpl(_$TestResultResponseImpl _value,
      $Res Function(_$TestResultResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? test = null,
    Object? score = null,
  }) {
    return _then(_$TestResultResponseImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestResultResponseImpl implements _TestResultResponse {
  _$TestResultResponseImpl(
      {@JsonKey(name: 'created_at') required this.createdAt,
      required this.test,
      required this.score});

  factory _$TestResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestResultResponseImplFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String test;
  @override
  final int score;

  @override
  String toString() {
    return 'TestResultResponse(createdAt: $createdAt, test: $test, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestResultResponseImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.score, score) || other.score == score));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, test, score);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestResultResponseImplCopyWith<_$TestResultResponseImpl> get copyWith =>
      __$$TestResultResponseImplCopyWithImpl<_$TestResultResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestResultResponseImplToJson(
      this,
    );
  }
}

abstract class _TestResultResponse implements TestResultResponse {
  factory _TestResultResponse(
      {@JsonKey(name: 'created_at') required final String createdAt,
      required final String test,
      required final int score}) = _$TestResultResponseImpl;

  factory _TestResultResponse.fromJson(Map<String, dynamic> json) =
      _$TestResultResponseImpl.fromJson;

  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  String get test;
  @override
  int get score;
  @override
  @JsonKey(ignore: true)
  _$$TestResultResponseImplCopyWith<_$TestResultResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
