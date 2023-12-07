// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PluginImpl _$$PluginImplFromJson(Map<String, dynamic> json) => _$PluginImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      link: json['link'] as String,
      picture: json['picture'] as String?,
      description: json['description'] as String?,
      perPhoto: (json['per_photo'] as num?)?.toDouble(),
      isSelected: json['isSelected'] as bool?,
    );

Map<String, dynamic> _$$PluginImplToJson(_$PluginImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'link': instance.link,
      'picture': instance.picture,
      'description': instance.description,
      'per_photo': instance.perPhoto,
      'isSelected': instance.isSelected,
    };
