// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      title: json['title'] as String?,
      picture: json['picture'] as String?,
      id: json['id'] as int?,
      isRight: json['is_right'] as bool?,
      rightAnswer: json['right_answer'] as String?,
      checked: json['checked'] as bool?,
      answer: json['answer'] as String?,
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('picture', instance.picture);
  writeNotNull('id', instance.id);
  writeNotNull('is_right', instance.isRight);
  writeNotNull('right_answer', instance.rightAnswer);
  writeNotNull('checked', instance.checked);
  writeNotNull('answer', instance.answer);
  return val;
}
