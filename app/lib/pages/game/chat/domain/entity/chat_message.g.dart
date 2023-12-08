// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageImpl _$$ChatMessageImplFromJson(Map<String, dynamic> json) =>
    _$ChatMessageImpl(
      user: ChatUser.fromJson(json['user'] as Map<String, dynamic>),
      message: json['message'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      attachment: json['attachment'] == null
          ? null
          : Attachment.fromJson(json['attachment'] as Map<String, dynamic>),
      links: (json['links'] as List<dynamic>?)
              ?.map((e) => ChatMessageLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ChatMessageLink>[],
    );

Map<String, dynamic> _$$ChatMessageImplToJson(_$ChatMessageImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'message': instance.message,
      'dateTime': instance.dateTime.toIso8601String(),
      'attachment': instance.attachment,
      'links': instance.links,
    };
