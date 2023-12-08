import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_link.freezed.dart';
part 'chat_message_link.g.dart';

@freezed
class ChatMessageLink with _$ChatMessageLink {
    factory ChatMessageLink({
      required int start,
      required int end,
      @Default(false)
      bool external,
}) = _ChatMessageLink;

    factory ChatMessageLink.fromJson(Map<String, dynamic> json) => _$ChatMessageLinkFromJson(json);
}