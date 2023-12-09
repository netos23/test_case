import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level_map.dart';
import 'package:test_case/router/app_router.dart';
import 'game_wm.dart';

// TODO: cover with documentation
/// Main widget for Game module
@RoutePage()
class GamePageWidget extends ElementaryWidget<IGameWidgetModel> {
  const GamePageWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultGameWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IGameWidgetModel wm) {
    final chapters = wm.getLevelMaps();
    return Scaffold(
      body: SafeArea(
        child: PageView.builder(
          itemCount: chapters.length,
          itemBuilder: (BuildContext context, int index) {
            return LevelPage(chapter: chapters[index]);
          },
        ),
      ),
    );
  }
}

class LevelPage extends StatelessWidget {
  const LevelPage({super.key, required this.chapter});

  final LevelMap chapter;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (chapter.levels != null) {
          context.router.push(
            ChapterFinRoute(
              levelMap: chapter,
            ),
          );
        }
      },
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                fit: BoxFit.fill,
                chapter.image ?? '',
                height: 250,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              chapter.title ?? '',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
