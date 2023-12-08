import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'chat_page_model.dart';
import 'chat_page_widget.dart';

abstract interface class IChatPageWidgetModel implements IWidgetModel {
}

ChatPageWidgetModel defaultChatPageWidgetModelFactory(BuildContext context) {
  return ChatPageWidgetModel(ChatPageModel());
}

// TODO: cover with documentation
/// Default widget model for ChatPageWidget
class ChatPageWidgetModel extends WidgetModel<ChatPageWidget, ChatPageModel>
    implements IChatPageWidgetModel {

  ChatPageWidgetModel(ChatPageModel model) : super(model);
}
