// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageChatActionImpl _$$MessageChatActionImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageChatActionImpl(
      duration: json['duration'] == null
          ? Duration.zero
          : Duration(microseconds: json['duration'] as int),
      message: ChatMessage.fromJson(json['message'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MessageChatActionImplToJson(
        _$MessageChatActionImpl instance) =>
    <String, dynamic>{
      'duration': instance.duration.inMicroseconds,
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$ResponceChatActionImpl _$$ResponceChatActionImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponceChatActionImpl(
      duration: json['duration'] == null
          ? Duration.zero
          : Duration(microseconds: json['duration'] as int),
      message: ChatMessage.fromJson(json['message'] as Map<String, dynamic>),
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => ResponseVariant.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ResponseVariant>[],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResponceChatActionImplToJson(
        _$ResponceChatActionImpl instance) =>
    <String, dynamic>{
      'duration': instance.duration.inMicroseconds,
      'message': instance.message,
      'variants': instance.variants,
      'runtimeType': instance.$type,
    };
