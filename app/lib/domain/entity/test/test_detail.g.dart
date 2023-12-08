// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestDetailImpl _$$TestDetailImplFromJson(Map<String, dynamic> json) =>
    _$TestDetailImpl(
      id: json['id'] as int?,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      name: json['name'] as String,
      topic: json['topic'] as String,
      picture: json['picture'] as String?,
      forAge: json['for_age'] as String?,
      complexity: json['complexity'] as String?,
      createdAt: json['created_at'] as String?,
      requiredScore: json['requiredScore'] as int?,
    );

Map<String, dynamic> _$$TestDetailImplToJson(_$TestDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questions': instance.questions,
      'description': instance.description,
      'name': instance.name,
      'topic': instance.topic,
      'picture': instance.picture,
      'for_age': instance.forAge,
      'complexity': instance.complexity,
      'created_at': instance.createdAt,
      'requiredScore': instance.requiredScore,
    };
