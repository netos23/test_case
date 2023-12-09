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
  bool? get passed => throw _privateConstructorUsedError;
  double? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_amount')
  int? get correctAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  int? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'top_percent')
  int? get topPercent => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;

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
      {bool? passed,
      double? score,
      @JsonKey(name: 'correct_amount') int? correctAmount,
      @JsonKey(name: 'total_amount') int? totalAmount,
      @JsonKey(name: 'top_percent') int? topPercent,
      List<Question> questions});
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
    Object? passed = freezed,
    Object? score = freezed,
    Object? correctAmount = freezed,
    Object? totalAmount = freezed,
    Object? topPercent = freezed,
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      passed: freezed == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      correctAmount: freezed == correctAmount
          ? _value.correctAmount
          : correctAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      topPercent: freezed == topPercent
          ? _value.topPercent
          : topPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
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
      {bool? passed,
      double? score,
      @JsonKey(name: 'correct_amount') int? correctAmount,
      @JsonKey(name: 'total_amount') int? totalAmount,
      @JsonKey(name: 'top_percent') int? topPercent,
      List<Question> questions});
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
    Object? passed = freezed,
    Object? score = freezed,
    Object? correctAmount = freezed,
    Object? totalAmount = freezed,
    Object? topPercent = freezed,
    Object? questions = null,
  }) {
    return _then(_$TestResultResponseImpl(
      passed: freezed == passed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double?,
      correctAmount: freezed == correctAmount
          ? _value.correctAmount
          : correctAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      topPercent: freezed == topPercent
          ? _value.topPercent
          : topPercent // ignore: cast_nullable_to_non_nullable
              as int?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestResultResponseImpl implements _TestResultResponse {
  _$TestResultResponseImpl(
      {this.passed,
      this.score,
      @JsonKey(name: 'correct_amount') this.correctAmount,
      @JsonKey(name: 'total_amount') this.totalAmount,
      @JsonKey(name: 'top_percent') this.topPercent,
      required final List<Question> questions})
      : _questions = questions;

  factory _$TestResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestResultResponseImplFromJson(json);

  @override
  final bool? passed;
  @override
  final double? score;
  @override
  @JsonKey(name: 'correct_amount')
  final int? correctAmount;
  @override
  @JsonKey(name: 'total_amount')
  final int? totalAmount;
  @override
  @JsonKey(name: 'top_percent')
  final int? topPercent;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'TestResultResponse(passed: $passed, score: $score, correctAmount: $correctAmount, totalAmount: $totalAmount, topPercent: $topPercent, questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestResultResponseImpl &&
            (identical(other.passed, passed) || other.passed == passed) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.correctAmount, correctAmount) ||
                other.correctAmount == correctAmount) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.topPercent, topPercent) ||
                other.topPercent == topPercent) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, passed, score, correctAmount,
      totalAmount, topPercent, const DeepCollectionEquality().hash(_questions));

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
      {final bool? passed,
      final double? score,
      @JsonKey(name: 'correct_amount') final int? correctAmount,
      @JsonKey(name: 'total_amount') final int? totalAmount,
      @JsonKey(name: 'top_percent') final int? topPercent,
      required final List<Question> questions}) = _$TestResultResponseImpl;

  factory _TestResultResponse.fromJson(Map<String, dynamic> json) =
      _$TestResultResponseImpl.fromJson;

  @override
  bool? get passed;
  @override
  double? get score;
  @override
  @JsonKey(name: 'correct_amount')
  int? get correctAmount;
  @override
  @JsonKey(name: 'total_amount')
  int? get totalAmount;
  @override
  @JsonKey(name: 'top_percent')
  int? get topPercent;
  @override
  List<Question> get questions;
  @override
  @JsonKey(ignore: true)
  _$$TestResultResponseImplCopyWith<_$TestResultResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
