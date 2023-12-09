// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLevelImpl _$$UserLevelImplFromJson(Map<String, dynamic> json) =>
    _$UserLevelImpl(
      id: json['id'] as int,
      level: json['level'] as String,
      scoreFrom: json['score_from'] as int,
      picture: json['picture'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$UserLevelImplToJson(_$UserLevelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'score_from': instance.scoreFrom,
      'picture': instance.picture,
      'color': instance.color,
    };
