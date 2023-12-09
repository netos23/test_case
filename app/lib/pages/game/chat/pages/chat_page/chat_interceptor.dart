import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_action.dart';
import 'package:test_case/pages/game/chat/domain/entity/response_variant.dart';

abstract interface class ChatInterceptor {
  Future<bool> onMessage(ChatAction action);

  Future<bool> onVariant(BuildContext context, ChatAction action,
      ResponseVariant variant, Level? level);

  Future<bool> onLink(
    ChatAction action,
    String url,
  );
}
