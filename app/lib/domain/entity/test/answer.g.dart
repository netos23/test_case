// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerImpl _$$AnswerImplFromJson(Map<String, dynamic> json) => _$AnswerImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      content: json['content'] as String?,
      type: json['type'] as String?,
      isSelect: json['isSelect'] as bool?,
    );

Map<String, dynamic> _$$AnswerImplToJson(_$AnswerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'content': instance.content,
      'type': instance.type,
      'isSelect': instance.isSelect,
    };
