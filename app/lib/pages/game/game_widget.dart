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
    final chapters = wm.getLevelMaps();
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/shop.png'),
                      ),
                      Text(chapters[0].title ?? ''),
                    ],
                  ),
                ),
                onTap: () {
                  wm.context.router.push(
                    ChapterFinRoute(
                      levelMap: chapters[0],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/chat.png'),
                      ),
                      Text(chapters[1].title ?? ''),
                    ],
                  ),
                ),
                onTap: () {
                  wm.context.router.push(
                    ChapterFinRoute(
                      levelMap: chapters[1],
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/images/lock.png'),
                      ),
                      Text(chapters[2].title ?? ''),
                    ],
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
