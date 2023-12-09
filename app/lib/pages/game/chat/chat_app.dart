import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/internal/color_schemes.g.dart';
import 'package:test_case/pages/game/chat/pages/chat_page/chat_page_widget.dart';
import 'package:test_case/pages/game/domain/chat_page_configuration.dart';

@RoutePage()
class ChatAppPageWidget extends StatelessWidget {
  const ChatAppPageWidget({
    super.key,
    @required this.level,
    @required this.config,
  });

  final Level? level;
  final ChatPageConfiguration? config;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.dark,
      home: ChatPageWidget(
        chatUser: config?.chatUser,
        level: level,
        myUser: config?.myUser,
        actions: config?.actions ?? [],
        chatInterceptor: config?.chatInterceptor,
      ),
    );
  }
}
