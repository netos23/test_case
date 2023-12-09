// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_result_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestResultResponseImpl _$$TestResultResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TestResultResponseImpl(
      createdAt: json['created_at'] as String,
      test: json['test'] as String,
      score: json['score'] as int,
    );

Map<String, dynamic> _$$TestResultResponseImplToJson(
        _$TestResultResponseImpl instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt,
      'test': instance.test,
      'score': instance.score,
    };
