import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level_map.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';
import 'package:test_case/router/app_router.dart';

@RoutePage()
class ChapterFinPageWidget extends StatefulWidget {
  const ChapterFinPageWidget({
    super.key,
    this.levelMap,
  });

  final LevelMap? levelMap;

  @override
  State<ChapterFinPageWidget> createState() => _ChapterFinPageWidgetState();
}

class _ChapterFinPageWidgetState extends State<ChapterFinPageWidget> {
  @override
  void initState() {
    super.initState();
    context.router.navigate(
      TellingRoute(messages: widget.levelMap?.helloMessage ?? []),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: SizedBox(
          height: 1000,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/forest.png',
                fit: BoxFit.cover,
                height: 800,
              ),
              for (int index = 0;
                  index < (widget.levelMap?.levels?.length ?? 0);
                  index++)
                Positioned(
                  width: 100,
                  height: 100,
                  bottom: 40 + 150.0 * index,
                  left: 40 + 30.0 * index,
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          widget.levelMap?.levels?[index].numeric.toString() ??
                              '0',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    onTap: () async {
                      final route =
                          widget.levelMap?.levels?[index].levelPageBuilder;
                      await context.router.push(
                        TellingRoute(
                          messages:
                              widget.levelMap?.levels?[index].helloMessage ??
                                  [],
                        ),
                      );
                      if (route != null) {
                        if (context.mounted) {
                          final routing =
                              route(widget.levelMap?.levels?[index]);
                          context.router.push(routing);
                        }
                      }
                    },
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
