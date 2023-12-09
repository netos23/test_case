// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserStatImpl _$$UserStatImplFromJson(Map<String, dynamic> json) =>
    _$UserStatImpl(
      level: json['level'] as String,
      totalScore: json['total_score'] as int,
      passedTestAmount: json['passed_test_amount'] as int,
      totalTestAmount: json['total_test_amount'] as int,
      attemptAmount: json['attempt_amount'] as int,
      easyTestCount: json['easy_test_count'] as int,
      mediumTestCount: json['medium_test_count'] as int,
      hardTestCount: json['hard_test_count'] as int,
      successResults: (json['success_results'] as List<dynamic>)
          .map((e) => TestResultResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserStatImplToJson(_$UserStatImpl instance) =>
    <String, dynamic>{
      'level': instance.level,
      'total_score': instance.totalScore,
      'passed_test_amount': instance.passedTestAmount,
      'total_test_amount': instance.totalTestAmount,
      'attempt_amount': instance.attemptAmount,
      'easy_test_count': instance.easyTestCount,
      'medium_test_count': instance.mediumTestCount,
      'hard_test_count': instance.hardTestCount,
      'success_results': instance.successResults,
    };
