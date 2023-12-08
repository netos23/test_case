// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceImpl _$$SourceImplFromJson(Map<String, dynamic> json) => _$SourceImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      topic: json['topic'] as String,
      profi: json['profi'] as bool?,
      forAge: json['for_age'] as String?,
    );

Map<String, dynamic> _$$SourceImplToJson(_$SourceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'topic': instance.topic,
      'profi': instance.profi,
      'for_age': instance.forAge,
    };
