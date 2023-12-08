import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_action.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_user.dart';
import 'package:test_case/pages/games/widgets/browser_overlay.dart';

import 'chat_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ChatPage module
class ChatPageWidget extends ElementaryWidget<IChatPageWidgetModel> {
  const ChatPageWidget({
    Key? key,
    required this.user,
    required this.actions,
    WidgetModelFactory wmFactory = defaultChatPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final ChatUser user;
  final List<ChatAction> actions;

  @override
  Widget build(IChatPageWidgetModel wm) {
    return BrowserOverlay(
      body: Scaffold(

      ),
    );
  }
}
