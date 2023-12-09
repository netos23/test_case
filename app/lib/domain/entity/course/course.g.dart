// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      name: json['name'] as String?,
      picture: json['picture'] as String?,
      description: json['description'] as String?,
      educationText: json['educationText'] as String?,
      test: json['test'] as int?,
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Course.fromJson(e as Map<String, dynamic>))
          .toList(),
      isSelect: json['isSelect'] as bool?,
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'picture': instance.picture,
      'description': instance.description,
      'educationText': instance.educationText,
      'test': instance.test,
      'sources': instance.sources,
      'isSelect': instance.isSelect,
    };
