// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResponseImpl _$$PaymentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentResponseImpl(
      url: json['url'] as String,
      successUrl: json['success_url'] as String,
      failedUrl: json['failed_url'] as String,
    );

Map<String, dynamic> _$$PaymentResponseImplToJson(
        _$PaymentResponseImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'success_url': instance.successUrl,
      'failed_url': instance.failedUrl,
    };
