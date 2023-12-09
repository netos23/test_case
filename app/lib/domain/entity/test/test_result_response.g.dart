// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestResultResponseImpl _$$TestResultResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TestResultResponseImpl(
      passed: json['passed'] as bool?,
      score: (json['score'] as num?)?.toDouble(),
      correctAmount: json['correct_amount'] as int?,
      totalAmount: json['total_amount'] as int?,
      topPercent: json['top_percent'] as int?,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestResultResponseImplToJson(
        _$TestResultResponseImpl instance) =>
    <String, dynamic>{
      'passed': instance.passed,
      'score': instance.score,
      'correct_amount': instance.correctAmount,
      'total_amount': instance.totalAmount,
      'top_percent': instance.topPercent,
      'questions': instance.questions,
    };
