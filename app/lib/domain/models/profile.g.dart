// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      email: json['email'] as String,
      firstName: json['first_name'] as String?,
      secondName: json['second_name'] as String?,
      birthDate: json['birth_date'] as String?,
      gender: json['gender'] as String?,
      role: json['role'] as String?,
      phone: json['phone'] as String?,
      brand: json['brand'] as String?,
      tgChatStartLink: json['tg_chat_start_link'] as String?,
      age6_12: json['age6_12'] as bool?,
      age13_16: json['age13_16'] as bool?,
      age16_90: json['age16_90'] as bool?,
      totalScore: json['total_score'] as int?,
      initialPassed: json['initial_passed'] as bool?,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) {
  final val = <String, dynamic>{
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('second_name', instance.secondName);
  writeNotNull('birth_date', instance.birthDate);
  writeNotNull('gender', instance.gender);
  writeNotNull('role', instance.role);
  writeNotNull('phone', instance.phone);
  writeNotNull('brand', instance.brand);
  writeNotNull('tg_chat_start_link', instance.tgChatStartLink);
  writeNotNull('age6_12', instance.age6_12);
  writeNotNull('age13_16', instance.age13_16);
  writeNotNull('age16_90', instance.age16_90);
  writeNotNull('total_score', instance.totalScore);
  writeNotNull('initial_passed', instance.initialPassed);
  return val;
}

_$PaymentIdImpl _$$PaymentIdImplFromJson(Map<String, dynamic> json) =>
    _$PaymentIdImpl(
      id: json['id'] as int,
    );

Map<String, dynamic> _$$PaymentIdImplToJson(_$PaymentIdImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$PaymetnUrlImpl _$$PaymetnUrlImplFromJson(Map<String, dynamic> json) =>
    _$PaymetnUrlImpl(
      url: json['url'] as String,
      success_url: json['success_url'] as String?,
      failed_url: json['failed_url'] as String?,
    );

Map<String, dynamic> _$$PaymetnUrlImplToJson(_$PaymetnUrlImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'success_url': instance.success_url,
      'failed_url': instance.failed_url,
    };
