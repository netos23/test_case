// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultQuestionImpl _$$ResultQuestionImplFromJson(Map<String, dynamic> json) =>
    _$ResultQuestionImpl(
      id: json['id'] as int,
      variants: (json['variants'] as List<dynamic>)
          .map((e) => ResultVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultQuestionImplToJson(
        _$ResultQuestionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variants': instance.variants,
    };
