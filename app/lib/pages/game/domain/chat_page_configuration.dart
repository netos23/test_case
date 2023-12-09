import 'package:test_case/pages/game/chat/domain/entity/chat_action.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_user.dart';
import 'package:test_case/pages/game/chat/pages/chat_page/chat_interceptor.dart';

class ChatPageConfiguration {
  final List<ChatAction>? actions;

  final ChatInterceptor? chatInterceptor;
  final ChatUser? chatUser;
  final ChatUser? myUser;

  ChatPageConfiguration({
    this.actions,
    this.chatInterceptor,
    this.chatUser,
    this.myUser,
  });
}
