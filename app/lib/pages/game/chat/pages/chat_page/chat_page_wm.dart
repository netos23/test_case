import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_action.dart';
import 'package:test_case/pages/game/chat/domain/entity/response_variant.dart';
import 'package:test_case/pages/game/chat/domain/manager/sound_controller.dart';
import 'package:test_case/util/wm_extensions.dart';

import 'chat_page_model.dart';
import 'chat_page_widget.dart';

abstract interface class IChatPageWidgetModel
    implements IWidgetModel, IThemeProvider {
  Stream<List<ChatAction>> get chatActions;

  void onSelected(ResponseVariant value);

  void onLink(MessageChatAction action, String link);
}

ChatPageWidgetModel defaultChatPageWidgetModelFactory(BuildContext context) {
  return ChatPageWidgetModel(
    ChatPageModel(),
    AppComponents().soundController,
  );
}

// TODO: cover with documentation
/// Default widget model for ChatPageWidget
class ChatPageWidgetModel extends WidgetModel<ChatPageWidget, ChatPageModel>
    with ThemeProvider
    implements IChatPageWidgetModel {
  ChatPageWidgetModel(
    ChatPageModel model,
    this.soundController,
  ) : super(model);

  @override
  final BehaviorSubject<List<ChatAction>> chatActions = BehaviorSubject();
  final SoundController soundController;

  @override
  void initWidgetModel() {
    // TODO: implement initWidgetModel
    super.initWidgetModel();
    processMessages(widget.actions);
  }

  Future<void> processMessages(List<ChatAction> actions) async {
    for (final action in actions) {
      final stack = chatActions.valueOrNull ?? [];
      final intercept = await widget.chatInterceptor?.onMessage(action);
      if (intercept ?? false) {
        return;
      }
      await Future.delayed(action.duration);
      chatActions.add([
        action,
        ...stack,
      ]);
      if (action.message?.user == widget.chatUser) {
        await soundController.playSound();
      }
    }
  }

  @override
  void dispose() {
    chatActions.close();
    super.dispose();
  }

  @override
  Future<void> onSelected(ResponseVariant value) async {
    final oldStack = chatActions.valueOrNull ?? [];
    final action = oldStack[0];

    final intercept = await widget.chatInterceptor?.onVariant(context, action, value, widget.level);
    if (intercept ?? false) {
      return;
    }
    final stack = oldStack.sublist(1);
    chatActions.add([
      ChatAction.message(
        message: action.message.copyWith(
          message: value.message,
        ),
      ),
      ...stack,
    ]);

    processMessages(value.actions);
  }

  @override
  Future<void> onLink(MessageChatAction action, String link) async {
    final intercept = await widget.chatInterceptor?.onLink(
      action,
      link,
    );
    if (intercept ?? false) {
      return;
    }
    // TODO(netos23): handle links
  }
}
