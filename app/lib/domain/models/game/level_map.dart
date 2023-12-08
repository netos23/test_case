import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level.dart';

class LevelMap {
  final String? title;
  final List<Level>? levels;
  final String? helloMessage;
  final int? currLevel;

  // может понадобится для кастомных уровней
  final Widget? levelPage;

  LevelMap({
    this.title,
    this.levels,
    this.helloMessage,
    this.currLevel,
    this.levelPage,
  });
}
