import 'package:flutter/material.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/internal/color_schemes.g.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_action.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_message.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_message_link.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_user.dart';
import 'package:test_case/pages/game/chat/domain/entity/response_variant.dart';
import 'package:test_case/pages/game/chat/pages/chat_page/chat_page_widget.dart';

class ChatApp extends StatelessWidget {
  const ChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    const user = ChatUser(
      name: 'Pavel',
      surname: 'Durov',
      avatar:
          'https://rgnp.ru/wp-content/uploads/4/0/c/40cdefa8a89fac40f9e6e6afd5ed25fc.jpeg',
    );

    const myUser = ChatUser(
      name: 'Nikita',
      surname: 'Morozov',
      avatar:
          'https://rgnp.ru/wp-content/uploads/4/0/c/40cdefa8a89fac40f9e6e6afd5ed25fc.jpeg',
    );
    var millisecondsSinceEpoch2 = DateTime.now().millisecondsSinceEpoch;
    return MaterialApp(
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.dark,
      home: ChatPageWidget(
        chatUser: user,
        myUser: myUser,
        actions: [
          ChatAction.message(
            message: ChatMessage(
              user: user,
              message: 'Привет как деда?',
              dateTime: DateTime.fromMillisecondsSinceEpoch(
                millisecondsSinceEpoch2,
              ),
            ),
            duration: Duration.zero,
          ),
          ChatAction.message(
            message: ChatMessage(
              user: user,
              message: 'Я максим из википелии. Как насчет поработать?',
              dateTime: DateTime.fromMillisecondsSinceEpoch(
                millisecondsSinceEpoch2 + 1000,
              ),
              links: ChatMessageLink(
                start: 2,
                end: 9,
              ),
            ),
            duration: const Duration(seconds: 1),
          ),
          ChatAction.message(
            message: ChatMessage(
              user: user,
              message: 'Я максим из википелии. Как насчет поработать?',
              dateTime: DateTime.fromMillisecondsSinceEpoch(
                millisecondsSinceEpoch2 + 2000,
              ),
            ),
            duration: const Duration(seconds: 1),
          ),
          ChatAction.message(
            message: ChatMessage(
              user: myUser,
              message: 'Привет',
              dateTime: DateTime.fromMillisecondsSinceEpoch(
                millisecondsSinceEpoch2 + 3000,
              ),
            ),
            duration: const Duration(seconds: 1),
          ),
          ChatAction.message(
            message: ChatMessage(
              user: myUser,
              message: 'Нет, Спасибо!',
              dateTime: DateTime.fromMillisecondsSinceEpoch(
                millisecondsSinceEpoch2 + 4000,
              ),
            ),
            duration: const Duration(seconds: 1),
          ),
          ChatAction.responce(
            message: ChatMessage(
              user: myUser,
              message: '',
              dateTime: DateTime.fromMillisecondsSinceEpoch(
                millisecondsSinceEpoch2 + 2000,
              ),
            ),
            variants: [
              ResponseVariant(
                message: 'А почему ты интерисуешься?',
                actions: [
                  ChatAction.message(
                    message: ChatMessage(
                      user: user,
                      message: 'Привет как деда?',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2,
                      ),
                    ),
                    duration: Duration.zero,
                  ),
                  ChatAction.message(
                    message: ChatMessage(
                      user: user,
                      message: 'Я максим из википелии. Как насчет поработать?',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2 + 1000,
                      ),
                    ),
                    duration: const Duration(seconds: 1),
                  ),
                  ChatAction.message(
                    message: ChatMessage(
                      user: user,
                      message: 'Я максим из википелии. Как насчет поработать?',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2 + 2000,
                      ),
                    ),
                    duration: const Duration(seconds: 1),
                  ),
                ],
              ),
              ResponseVariant(
                message: 'Мне кажется, что вы мошшенник?',
                actions: [
                  ChatAction.message(
                    message: ChatMessage(
                      user: user,
                      message: 'Привет как деда?',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2,
                      ),
                    ),
                    duration: Duration.zero,
                  ),
                  ChatAction.message(
                    message: ChatMessage(
                      user: user,
                      message: 'Я максим из википелии. Как насчет поработать?',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2 + 1000,
                      ),
                    ),
                    duration: const Duration(seconds: 1),
                  ),
                  ChatAction.message(
                    message: ChatMessage(
                      user: user,
                      message: 'Я максим из википелии. Как насчет поработать?',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2 + 2000,
                      ),
                    ),
                    duration: const Duration(seconds: 1),
                  ),
                ],
              ),
              ResponseVariant(
                message: 'Да',
                actions: [
                  ChatAction.message(
                    message: ChatMessage(
                      user: user,
                      message: 'Привет как деда?',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2,
                      ),
                    ),
                    duration: Duration.zero,
                  ),
                  ChatAction.message(
                    message: ChatMessage(
                      user: user,
                      message: 'Я максим из википелии. Как насчет поработать?',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2 + 1000,
                      ),
                    ),
                    duration: const Duration(seconds: 1),
                  ),
                  ChatAction.message(
                    message: ChatMessage(
                      user: user,
                      message: 'Я максим из википелии. Как насчет поработать?',
                      dateTime: DateTime.fromMillisecondsSinceEpoch(
                        millisecondsSinceEpoch2 + 2000,
                      ),

                    ),
                    duration: const Duration(seconds: 1),
                  ),
                ],
              ),
            ],
          )
        ],
        chatInterceptor: null,
      ),
    );
  }
}
