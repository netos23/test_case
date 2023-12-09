// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageAttachmentImpl _$$ImageAttachmentImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageAttachmentImpl(
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ImageAttachmentImplToJson(
        _$ImageAttachmentImpl instance) =>
    <String, dynamic>{
      'images': instance.images,
      'runtimeType': instance.$type,
    };

_$FileAttachmentImpl _$$FileAttachmentImplFromJson(Map<String, dynamic> json) =>
    _$FileAttachmentImpl(
      url: json['url'] as String,
      filename: json['filename'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$FileAttachmentImplToJson(
        _$FileAttachmentImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'filename': instance.filename,
      'runtimeType': instance.$type,
    };

_$VideoAttachmentImpl _$$VideoAttachmentImplFromJson(
        Map<String, dynamic> json) =>
    _$VideoAttachmentImpl(
      url: json['url'] as String,
      filename: json['filename'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VideoAttachmentImplToJson(
        _$VideoAttachmentImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'filename': instance.filename,
      'runtimeType': instance.$type,
    };
