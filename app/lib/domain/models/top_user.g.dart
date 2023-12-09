// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopUserImpl _$$TopUserImplFromJson(Map<String, dynamic> json) =>
    _$TopUserImpl(
      name: json['name'] as String,
      level: json['level'] as String,
      totalScore: json['total_score'] as int,
    );

Map<String, dynamic> _$$TopUserImplToJson(_$TopUserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
      'total_score': instance.totalScore,
    };
