// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      title: json['title'] as String,
      picture: json['picture'] as String?,
      id: json['id'] as int?,
      isRight: json['isRight'] as bool?,
      rightAnswer: json['rightAnswer'] as String?,
      userCheck: json['userCheck'] as bool?,
      userAnswer: json['userAnswer'] as String?,
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) {
  final val = <String, dynamic>{
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('picture', instance.picture);
  writeNotNull('id', instance.id);
  writeNotNull('isRight', instance.isRight);
  writeNotNull('rightAnswer', instance.rightAnswer);
  writeNotNull('userCheck', instance.userCheck);
  writeNotNull('userAnswer', instance.userAnswer);
  return val;
}
