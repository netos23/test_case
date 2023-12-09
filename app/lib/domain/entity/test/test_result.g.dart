// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestResultImpl _$$TestResultImplFromJson(Map<String, dynamic> json) =>
    _$TestResultImpl(
      testId: json['test_id'] as int,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestResultImplToJson(_$TestResultImpl instance) =>
    <String, dynamic>{
      'test_id': instance.testId,
      'questions': instance.questions,
    };
