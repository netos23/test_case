// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseImpl _$$CourseImplFromJson(Map<String, dynamic> json) => _$CourseImpl(
      id: json['id'] as int,
      payed: json['payed'] as bool,
      name: json['name'] as String,
      picture: json['picture'] as String?,
      description: json['description'] as String,
      educationText: json['educational_text'] as String?,
      price: json['price'] as int?,
      test: json['test'] as int?,
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Source>[],
    );

Map<String, dynamic> _$$CourseImplToJson(_$CourseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payed': instance.payed,
      'name': instance.name,
      'picture': instance.picture,
      'description': instance.description,
      'educational_text': instance.educationText,
      'price': instance.price,
      'test': instance.test,
      'sources': instance.sources,
    };
