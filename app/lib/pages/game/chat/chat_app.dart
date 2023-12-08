import 'package:flutter/material.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_user.dart';
import 'package:test_case/pages/game/chat/pages/chat_page/chat_page_widget.dart';


class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatPageWidget(
        user: ChatUser(
          name: 'Pavel',
          surname: 'Durov',
          avatar: 'https://rgnp.ru/wp-content/uploads/4/0/c/40cdefa8a89fac40f9e6e6afd5ed25fc.jpeg',
        ),
        actions: [],
      ),
    );
  }
}
