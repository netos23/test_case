// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_stat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserStat _$UserStatFromJson(Map<String, dynamic> json) {
  return _UserStat.fromJson(json);
}

/// @nodoc
mixin _$UserStat {
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_score')
  int get totalScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'passed_test_amount')
  int get passedTestAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_test_amount')
  int get totalTestAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'attempt_amount')
  int get attemptAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'easy_test_count')
  int get easyTestCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'medium_test_count')
  int get mediumTestCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hard_test_count')
  int get hardTestCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'success_results')
  List<TestResultResponse> get successResults =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserStatCopyWith<UserStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStatCopyWith<$Res> {
  factory $UserStatCopyWith(UserStat value, $Res Function(UserStat) then) =
      _$UserStatCopyWithImpl<$Res, UserStat>;
  @useResult
  $Res call(
      {String level,
      @JsonKey(name: 'total_score') int totalScore,
      @JsonKey(name: 'passed_test_amount') int passedTestAmount,
      @JsonKey(name: 'total_test_amount') int totalTestAmount,
      @JsonKey(name: 'attempt_amount') int attemptAmount,
      @JsonKey(name: 'easy_test_count') int easyTestCount,
      @JsonKey(name: 'medium_test_count') int mediumTestCount,
      @JsonKey(name: 'hard_test_count') int hardTestCount,
      @JsonKey(name: 'success_results')
      List<TestResultResponse> successResults});
}

/// @nodoc
class _$UserStatCopyWithImpl<$Res, $Val extends UserStat>
    implements $UserStatCopyWith<$Res> {
  _$UserStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? totalScore = null,
    Object? passedTestAmount = null,
    Object? totalTestAmount = null,
    Object? attemptAmount = null,
    Object? easyTestCount = null,
    Object? mediumTestCount = null,
    Object? hardTestCount = null,
    Object? successResults = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      passedTestAmount: null == passedTestAmount
          ? _value.passedTestAmount
          : passedTestAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalTestAmount: null == totalTestAmount
          ? _value.totalTestAmount
          : totalTestAmount // ignore: cast_nullable_to_non_nullable
              as int,
      attemptAmount: null == attemptAmount
          ? _value.attemptAmount
          : attemptAmount // ignore: cast_nullable_to_non_nullable
              as int,
      easyTestCount: null == easyTestCount
          ? _value.easyTestCount
          : easyTestCount // ignore: cast_nullable_to_non_nullable
              as int,
      mediumTestCount: null == mediumTestCount
          ? _value.mediumTestCount
          : mediumTestCount // ignore: cast_nullable_to_non_nullable
              as int,
      hardTestCount: null == hardTestCount
          ? _value.hardTestCount
          : hardTestCount // ignore: cast_nullable_to_non_nullable
              as int,
      successResults: null == successResults
          ? _value.successResults
          : successResults // ignore: cast_nullable_to_non_nullable
              as List<TestResultResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStatImplCopyWith<$Res>
    implements $UserStatCopyWith<$Res> {
  factory _$$UserStatImplCopyWith(
          _$UserStatImpl value, $Res Function(_$UserStatImpl) then) =
      __$$UserStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String level,
      @JsonKey(name: 'total_score') int totalScore,
      @JsonKey(name: 'passed_test_amount') int passedTestAmount,
      @JsonKey(name: 'total_test_amount') int totalTestAmount,
      @JsonKey(name: 'attempt_amount') int attemptAmount,
      @JsonKey(name: 'easy_test_count') int easyTestCount,
      @JsonKey(name: 'medium_test_count') int mediumTestCount,
      @JsonKey(name: 'hard_test_count') int hardTestCount,
      @JsonKey(name: 'success_results')
      List<TestResultResponse> successResults});
}

/// @nodoc
class __$$UserStatImplCopyWithImpl<$Res>
    extends _$UserStatCopyWithImpl<$Res, _$UserStatImpl>
    implements _$$UserStatImplCopyWith<$Res> {
  __$$UserStatImplCopyWithImpl(
      _$UserStatImpl _value, $Res Function(_$UserStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? totalScore = null,
    Object? passedTestAmount = null,
    Object? totalTestAmount = null,
    Object? attemptAmount = null,
    Object? easyTestCount = null,
    Object? mediumTestCount = null,
    Object? hardTestCount = null,
    Object? successResults = null,
  }) {
    return _then(_$UserStatImpl(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
      totalScore: null == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int,
      passedTestAmount: null == passedTestAmount
          ? _value.passedTestAmount
          : passedTestAmount // ignore: cast_nullable_to_non_nullable
              as int,
      totalTestAmount: null == totalTestAmount
          ? _value.totalTestAmount
          : totalTestAmount // ignore: cast_nullable_to_non_nullable
              as int,
      attemptAmount: null == attemptAmount
          ? _value.attemptAmount
          : attemptAmount // ignore: cast_nullable_to_non_nullable
              as int,
      easyTestCount: null == easyTestCount
          ? _value.easyTestCount
          : easyTestCount // ignore: cast_nullable_to_non_nullable
              as int,
      mediumTestCount: null == mediumTestCount
          ? _value.mediumTestCount
          : mediumTestCount // ignore: cast_nullable_to_non_nullable
              as int,
      hardTestCount: null == hardTestCount
          ? _value.hardTestCount
          : hardTestCount // ignore: cast_nullable_to_non_nullable
              as int,
      successResults: null == successResults
          ? _value._successResults
          : successResults // ignore: cast_nullable_to_non_nullable
              as List<TestResultResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserStatImpl implements _UserStat {
  _$UserStatImpl(
      {required this.level,
      @JsonKey(name: 'total_score') required this.totalScore,
      @JsonKey(name: 'passed_test_amount') required this.passedTestAmount,
      @JsonKey(name: 'total_test_amount') required this.totalTestAmount,
      @JsonKey(name: 'attempt_amount') required this.attemptAmount,
      @JsonKey(name: 'easy_test_count') required this.easyTestCount,
      @JsonKey(name: 'medium_test_count') required this.mediumTestCount,
      @JsonKey(name: 'hard_test_count') required this.hardTestCount,
      @JsonKey(name: 'success_results')
      required final List<TestResultResponse> successResults})
      : _successResults = successResults;

  factory _$UserStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserStatImplFromJson(json);

  @override
  final String level;
  @override
  @JsonKey(name: 'total_score')
  final int totalScore;
  @override
  @JsonKey(name: 'passed_test_amount')
  final int passedTestAmount;
  @override
  @JsonKey(name: 'total_test_amount')
  final int totalTestAmount;
  @override
  @JsonKey(name: 'attempt_amount')
  final int attemptAmount;
  @override
  @JsonKey(name: 'easy_test_count')
  final int easyTestCount;
  @override
  @JsonKey(name: 'medium_test_count')
  final int mediumTestCount;
  @override
  @JsonKey(name: 'hard_test_count')
  final int hardTestCount;
  final List<TestResultResponse> _successResults;
  @override
  @JsonKey(name: 'success_results')
  List<TestResultResponse> get successResults {
    if (_successResults is EqualUnmodifiableListView) return _successResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_successResults);
  }

  @override
  String toString() {
    return 'UserStat(level: $level, totalScore: $totalScore, passedTestAmount: $passedTestAmount, totalTestAmount: $totalTestAmount, attemptAmount: $attemptAmount, easyTestCount: $easyTestCount, mediumTestCount: $mediumTestCount, hardTestCount: $hardTestCount, successResults: $successResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStatImpl &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.passedTestAmount, passedTestAmount) ||
                other.passedTestAmount == passedTestAmount) &&
            (identical(other.totalTestAmount, totalTestAmount) ||
                other.totalTestAmount == totalTestAmount) &&
            (identical(other.attemptAmount, attemptAmount) ||
                other.attemptAmount == attemptAmount) &&
            (identical(other.easyTestCount, easyTestCount) ||
                other.easyTestCount == easyTestCount) &&
            (identical(other.mediumTestCount, mediumTestCount) ||
                other.mediumTestCount == mediumTestCount) &&
            (identical(other.hardTestCount, hardTestCount) ||
                other.hardTestCount == hardTestCount) &&
            const DeepCollectionEquality()
                .equals(other._successResults, _successResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      level,
      totalScore,
      passedTestAmount,
      totalTestAmount,
      attemptAmount,
      easyTestCount,
      mediumTestCount,
      hardTestCount,
      const DeepCollectionEquality().hash(_successResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStatImplCopyWith<_$UserStatImpl> get copyWith =>
      __$$UserStatImplCopyWithImpl<_$UserStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserStatImplToJson(
      this,
    );
  }
}

abstract class _UserStat implements UserStat {
  factory _UserStat(
      {required final String level,
      @JsonKey(name: 'total_score') required final int totalScore,
      @JsonKey(name: 'passed_test_amount') required final int passedTestAmount,
      @JsonKey(name: 'total_test_amount') required final int totalTestAmount,
      @JsonKey(name: 'attempt_amount') required final int attemptAmount,
      @JsonKey(name: 'easy_test_count') required final int easyTestCount,
      @JsonKey(name: 'medium_test_count') required final int mediumTestCount,
      @JsonKey(name: 'hard_test_count') required final int hardTestCount,
      @JsonKey(name: 'success_results')
      required final List<TestResultResponse> successResults}) = _$UserStatImpl;

  factory _UserStat.fromJson(Map<String, dynamic> json) =
      _$UserStatImpl.fromJson;

  @override
  String get level;
  @override
  @JsonKey(name: 'total_score')
  int get totalScore;
  @override
  @JsonKey(name: 'passed_test_amount')
  int get passedTestAmount;
  @override
  @JsonKey(name: 'total_test_amount')
  int get totalTestAmount;
  @override
  @JsonKey(name: 'attempt_amount')
  int get attemptAmount;
  @override
  @JsonKey(name: 'easy_test_count')
  int get easyTestCount;
  @override
  @JsonKey(name: 'medium_test_count')
  int get mediumTestCount;
  @override
  @JsonKey(name: 'hard_test_count')
  int get hardTestCount;
  @override
  @JsonKey(name: 'success_results')
  List<TestResultResponse> get successResults;
  @override
  @JsonKey(ignore: true)
  _$$UserStatImplCopyWith<_$UserStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
