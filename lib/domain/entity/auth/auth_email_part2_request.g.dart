// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_email_part2_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthPart2RequestImpl _$$AuthPart2RequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthPart2RequestImpl(
      email: json['email'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$AuthPart2RequestImplToJson(
        _$AuthPart2RequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
    };
