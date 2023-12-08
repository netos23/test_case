// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariantImpl _$$VariantImplFromJson(Map<String, dynamic> json) =>
    _$VariantImpl(
      questionId: json['question'] as int,
      title: json['title'] as String,
      picture: json['picture'] as String?,
      isRight: json['is_right'] as bool?,
      rightAnswer: json['right_answer'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$VariantImplToJson(_$VariantImpl instance) {
  final val = <String, dynamic>{
    'question': instance.questionId,
    'title': instance.title,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('picture', instance.picture);
  writeNotNull('is_right', instance.isRight);
  writeNotNull('right_answer', instance.rightAnswer);
  writeNotNull('id', instance.id);
  return val;
}
