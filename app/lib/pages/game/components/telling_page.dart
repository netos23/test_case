import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:test_case/pages/game/components/empty_character_page.dart';
import 'package:test_case/pages/game/components/naiv_page.dart';
import 'package:test_case/pages/game/components/secure_page.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';

@RoutePage()
class TellingPageWidget extends StatefulWidget {
  const TellingPageWidget({
    super.key,
    @queryParam this.messages = const [],
  });

  final List<Message> messages;

  @override
  State<TellingPageWidget> createState() => _TellingPageWidgetState();
}

class _TellingPageWidgetState extends State<TellingPageWidget> {
  final BehaviorSubject<Message?> messageStream = BehaviorSubject.seeded(null);
  int currNumber = 0;

  @override
  void initState() {
    super.initState();
    messageStream.value = widget.messages.firstOrNull;
  }

  @override
  void dispose() {
    messageStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.50),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          currNumber++;
          if (currNumber == widget.messages.length) {
            context.router.pop();
          } else {
            messageStream.value = widget.messages[currNumber];
          }
        },
        child: SizedBox(
          height: 1000,
          child: StreamBuilder<Message?>(
            stream: messageStream,
            builder: (BuildContext context, AsyncSnapshot<Message?> snapshot) {
              final data = snapshot.data;
              if (data == null) {
                return Container();
              }
              if (data.character == null) {
                return EmptyCharacterPageWidget(text: data.message);
              } else if (data.character == 'naiv') {
                return NaivPageWidget(text: data.message);
              } else if (data.character == 'secure') {
                return SecurePageWidget(text: data.message);
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
