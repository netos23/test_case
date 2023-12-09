// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseVariantImpl _$$ResponseVariantImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseVariantImpl(
      message: json['message'] as String,
      actions: (json['actions'] as List<dynamic>)
          .map((e) => ChatAction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResponseVariantImplToJson(
        _$ResponseVariantImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'actions': instance.actions,
    };
