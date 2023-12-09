import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';

typedef MapBuilder = Widget Function(List<Level> levels);

class LevelMap {
  final String? title;
  final List<Level>? levels;
  final List<Message>? helloMessage;
  final String? image;
  final String? background;

  // показать текущий уровень (для отрисовки уже пройденных)
  // да костыль
  final int? currLevel;

  LevelMap({
    this.image,
    this.title,
    this.background,
    this.levels,
    this.helloMessage,
    this.currLevel,
  });

  LevelMap copyWith(
    String? image,
    String? title,
    List<Level>? levels,
    List<Message>? helloMessage,
    int? currLevel,
    String? background,
  ) {
    return LevelMap(
      image: image ?? this.image,
      levels: levels ?? this.levels,
      title: title ?? this.title,
      helloMessage: helloMessage ?? this.helloMessage,
      currLevel: currLevel ?? this.currLevel,
      background: background ?? this.background,
    );
  }
}
