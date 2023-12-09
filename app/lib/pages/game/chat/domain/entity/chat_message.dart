import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/pages/game/chat/domain/entity/attachment.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_user.dart';

import 'chat_message_link.dart';

part 'chat_message.freezed.dart';

part 'chat_message.g.dart';

@freezed
sealed class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required ChatUser user,
    required String message,
    required DateTime dateTime,
    Attachment? attachment,
    ChatMessageLink? links,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);
}
