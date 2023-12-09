import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_action.dart';
import 'package:test_case/pages/game/chat/domain/entity/chat_user.dart';
import 'package:test_case/pages/game/chat/pages/chat_page/chat_interceptor.dart';
import 'package:test_case/pages/game/components/browser_overlay.dart';

import 'chat_message.dart';
import 'chat_page_wm.dart';

// TODO: cover with documentation
/// Main widget for ChatPage module
class ChatPageWidget extends ElementaryWidget<IChatPageWidgetModel> {
  const ChatPageWidget({
    Key? key,
    this.level,
    required this.chatUser,
    required this.myUser,
    required this.actions,
    this.chatInterceptor,
    WidgetModelFactory wmFactory = defaultChatPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final ChatInterceptor? chatInterceptor;
  final ChatUser? chatUser;
  final ChatUser? myUser;
  final Level? level;
  final List<ChatAction> actions;

  @override
  Widget build(IChatPageWidgetModel wm) {
    final theme = wm.theme;
    final colorScheme = theme.colorScheme;

    return BrowserOverlay(
      url: 'https://N1k1t0gr4mm.com/n3_v0r',
      body: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Material(
            elevation: 1,
            color: colorScheme.surface,
            child: SizedBox(
              height: 50,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${chatUser?.name} ${chatUser?.surname}',
                        ),
                        const Text(
                          'Online',
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                          chatUser?.avatar ?? '',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: StreamBuilder<List<ChatAction>>(
                stream: wm.chatActions,
                builder: (context, snapshot) {
                  final actions = snapshot.data;

                  return ListView.builder(
                    reverse: true,
                    itemCount: actions?.length ?? 100,
                    itemBuilder: (context, index) {
                      if (actions == null) {
                        return const SizedBox();
                      }

                      final action = actions[index];

                      final queryData = MediaQuery.of(context);
                      return switch (action) {
                        MessageChatAction() => Align(
                            alignment: chatUser == action.message.user
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: queryData.size.width * 0.7,
                              ),
                              child: Card(
                                elevation: 2,
                                color: chatUser == action.message.user
                                    ? null
                                    : colorScheme.primaryContainer,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TimestampedChatMessage(
                                    text: action.message.message,
                                    sentAt:
                                        action.message.dateTime.formatTime(),
                                    link: action.message.links,
                                    onLink: (link, _) {
                                      wm.onLink(action, link);
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ResponceChatAction() => Padding(
                            padding: const EdgeInsets.only(
                              top: 32.0,
                            ),
                            child: Wrap(
                              alignment: WrapAlignment.end,
                              runSpacing: 0,
                              spacing: 5,
                              crossAxisAlignment: WrapCrossAlignment.end,
                              runAlignment: WrapAlignment.end,
                              children: [
                                for (final r in action.variants)
                                  ChoiceChip.elevated(
                                    color: MaterialStatePropertyAll(
                                      colorScheme.primary,
                                    ),
                                    elevation: 2,
                                    selected: false,
                                    label: Text(
                                      r.message,
                                      style: TextStyle(
                                        color: colorScheme.onPrimary,
                                      ),
                                    ),
                                    onSelected: (_) {
                                      wm.onSelected(r);
                                    },
                                  ),
                              ],
                            ),
                          )
                      };
                    },
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: const ChatInputRow(),
      ),
    );
  }
}

extension TimeFormatter on DateTime {
  String formatTime() {
    var hour = this.hour.toString();
    if (hour.length != 2) {
      hour = '0$hour';
    }
    var minute = this.minute.toString();
    if (minute.length != 2) {
      minute = '0$minute';
    }
    return '$hour:$minute';
  }
}

class ChatInputRow extends StatelessWidget {
  const ChatInputRow({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    return Material(
      elevation: 1,
      color: Theme.of(context).colorScheme.surface,
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 10,
          ),
          child: Row(
            children: [
              Transform(
                transform: Matrix4.rotationZ(pi / 6),
                child: const Icon(
                  Icons.attach_file,
                  size: 30,
                ),
              ),
              Expanded(
                child: TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: colorScheme.surfaceVariant,
                    hintText: 'Message',
                    suffixIcon: const Icon(
                      Icons.emoji_emotions_outlined,
                      size: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.mic_none_outlined,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
