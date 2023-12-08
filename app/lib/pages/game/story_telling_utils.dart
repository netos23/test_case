import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:test_case/router/app_router.dart';

class StoryTellingUtils {
  // static Future<void> tellStory(
  //     BuildContext context, List<Message> messages) async {
  //   context.router.navigate()
  //   for (int index = 0; index < messages.length; index ++) {
  //     await navigateByMessage(context, messages[index]);
  //     print('закончили');
  //   }
  // }

  // static Future<void> navigateByMessage(
  //     BuildContext context, Message message) async {
  //   if (message.character == null) {
  //     await context.router.push(
  //       EmptyCharacterRoute(text: message.message),
  //     );
  //   } else if (message.character == 'naiv') {
  //     await context.router.push(
  //       NaivRoute(text: message.message),
  //     );
  //   } else if (message.character == 'secure') {
  //     await context.router.push(
  //       SecureRoute(text: message.message),
  //     );
  //   }
  // }
}

class Message {
  // if null - without character
  // naiv
  // secure
  String? character;

  String message;

  Message({
    this.character,
    required this.message,
  });
}
