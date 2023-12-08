import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'game_wm.dart';

// TODO: cover with documentation
/// Main widget for Game module
class GameWidget extends ElementaryWidget<IGameWidgetModel> {
  const GameWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultGameWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IGameWidgetModel wm) {
    return Container();
  }
}
