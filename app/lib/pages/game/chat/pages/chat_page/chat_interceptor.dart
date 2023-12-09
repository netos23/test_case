import 'dart:ui';

import 'package:test_case/pages/game/chat/domain/entity/chat_action.dart';
import 'package:test_case/pages/game/chat/domain/entity/response_variant.dart';

abstract interface class ChatInterceptor {
  Future<bool> onMessage(ChatAction action);

  Future<bool> onVariant(ChatAction action, ResponseVariant variant);

  Future<bool> onLink(
    ChatAction action,
    String url,
  );
}
