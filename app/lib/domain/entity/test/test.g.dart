// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestImpl _$$TestImplFromJson(Map<String, dynamic> json) => _$TestImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      topic: json['topic'] as String,
      description: json['description'] as String,
      picture: json['picture'] as String?,
      forAge: json['for_age'] as String?,
      complexity: json['complexity'] as String?,
      createdAt: json['created_at'] as String?,
      requiredScore: json['requiredScore'] as int?,
    );

Map<String, dynamic> _$$TestImplToJson(_$TestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'topic': instance.topic,
      'description': instance.description,
      'picture': instance.picture,
      'for_age': instance.forAge,
      'complexity': instance.complexity,
      'created_at': instance.createdAt,
      'requiredScore': instance.requiredScore,
    };
