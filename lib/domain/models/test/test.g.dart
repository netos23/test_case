// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestImpl _$$TestImplFromJson(Map<String, dynamic> json) => _$TestImpl(
      email: json['email'] as String,
      id: json['id'] as String?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      picture: json['picture'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TestImplToJson(_$TestImpl instance) {
  final val = <String, dynamic>{
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('description', instance.description);
  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('picture', instance.picture);
  writeNotNull(
      'questions', instance.questions?.map((e) => e.toJson()).toList());
  return val;
}
