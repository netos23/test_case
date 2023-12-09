// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommends.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecommendsImpl _$$RecommendsImplFromJson(Map<String, dynamic> json) =>
    _$RecommendsImpl(
      title: json['title'] as String?,
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => Source.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RecommendsImplToJson(_$RecommendsImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('sources', instance.sources?.map((e) => e.toJson()).toList());
  return val;
}
