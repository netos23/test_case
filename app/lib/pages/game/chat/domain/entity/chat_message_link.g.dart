// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_link.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageLinkImpl _$$ChatMessageLinkImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageLinkImpl(
      start: json['start'] as int,
      end: json['end'] as int,
      external: json['external'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChatMessageLinkImplToJson(
        _$ChatMessageLinkImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'external': instance.external,
    };
