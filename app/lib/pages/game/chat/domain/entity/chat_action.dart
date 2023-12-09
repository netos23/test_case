import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_message.dart';

import 'response_variant.dart';

part 'chat_action.freezed.dart';

part 'chat_action.g.dart';

@freezed
sealed class ChatAction with _$ChatAction {
  const factory ChatAction.message({
    @Default(Duration.zero) Duration duration,
    required ChatMessage message,
  }) = MessageChatAction;

  const factory ChatAction.responce({
    @Default(Duration.zero) Duration duration,
    required ChatMessage message,
    @Default(<ResponseVariant>[]) List<ResponseVariant> variants,
  }) = ResponceChatAction;

  factory ChatAction.fromJson(Map<String, dynamic> json) =>
      _$ChatActionFromJson(json);
}
