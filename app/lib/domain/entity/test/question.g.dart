// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionImpl _$$QuestionImplFromJson(Map<String, dynamic> json) =>
    _$QuestionImpl(
      explainAnswer: json['explain_answer'] as String,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => Variant.fromJson(e as Map<String, dynamic>))
          .toList(),
      question: json['question'] as String,
      picture: json['picture'] as String?,
      type: json['type'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$QuestionImplToJson(_$QuestionImpl instance) {
  final val = <String, dynamic>{
    'explain_answer': instance.explainAnswer,
    'variants': instance.variants.map((e) => e.toJson()).toList(),
    'question': instance.question,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('picture', instance.picture);
  writeNotNull('type', instance.type);
  writeNotNull('id', instance.id);
  return val;
}
