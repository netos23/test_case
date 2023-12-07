// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageBannerImpl _$$ImageBannerImplFromJson(Map<String, dynamic> json) =>
    _$ImageBannerImpl(
      imageUrl: json['image_url'] as String,
      link: json['link'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ImageBannerImplToJson(_$ImageBannerImpl instance) {
  final val = <String, dynamic>{
    'image_url': instance.imageUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('link', instance.link);
  val['type'] = instance.$type;
  return val;
}

_$ButtonBannerImpl _$$ButtonBannerImplFromJson(Map<String, dynamic> json) =>
    _$ButtonBannerImpl(
      text: json['text'] as String,
      link: json['link'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$ButtonBannerImplToJson(_$ButtonBannerImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'link': instance.link,
      'type': instance.$type,
    };

_$TitleBannerImpl _$$TitleBannerImplFromJson(Map<String, dynamic> json) =>
    _$TitleBannerImpl(
      text: json['text'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$TitleBannerImplToJson(_$TitleBannerImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.$type,
    };

_$MarkdownBannerImpl _$$MarkdownBannerImplFromJson(Map<String, dynamic> json) =>
    _$MarkdownBannerImpl(
      text: json['text'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$MarkdownBannerImplToJson(
        _$MarkdownBannerImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'type': instance.$type,
    };

_$SliderBannerImpl _$$SliderBannerImplFromJson(Map<String, dynamic> json) =>
    _$SliderBannerImpl(
      images: (json['images'] as List<dynamic>)
          .map((e) => SliderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SliderBannerImplToJson(_$SliderBannerImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
      'type': instance.$type,
    };

_$SliderItemImpl _$$SliderItemImplFromJson(Map<String, dynamic> json) =>
    _$SliderItemImpl(
      url: json['url'] as String,
      link: json['link'] as String?,
    );

Map<String, dynamic> _$$SliderItemImplToJson(_$SliderItemImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'link': instance.link,
    };
