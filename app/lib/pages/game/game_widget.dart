import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
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
    final levels = wm.getLevelMaps();
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(levels[index].title ?? ''),
              onTap: () {
                context.router.push(ChapterFinRoute(levels: levels[index].levels ?? []));
              },
            );
          },
          itemCount: levels.length,
        ),
      ),
    );
  }
}
