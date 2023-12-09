// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoursePreviewImpl _$$CoursePreviewImplFromJson(Map<String, dynamic> json) =>
    _$CoursePreviewImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      picture: json['picture'] as String?,
      description: json['description'] as String?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$$CoursePreviewImplToJson(_$CoursePreviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'picture': instance.picture,
      'description': instance.description,
      'price': instance.price,
    };
