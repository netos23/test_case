import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:test_case/data/repository/game_repository.dart';
import 'package:test_case/domain/models/game/level_map.dart';
import 'package:test_case/internal/app_components.dart';
import 'game_model.dart';
import 'game_widget.dart';

abstract interface class IGameWidgetModel implements IWidgetModel {
  List<LevelMap> getLevelMaps();

  GameRepository get gameRepository;
}

GameWidgetModel defaultGameWidgetModelFactory(BuildContext context) {
  return GameWidgetModel(GameModel());
}

// TODO: cover with documentation
/// Default widget model for GameWidget
class GameWidgetModel extends WidgetModel<GamePageWidget, GameModel>
    implements IGameWidgetModel  {
  @override
  final GameRepository gameRepository = AppComponents().gameRepository;

  GameWidgetModel(GameModel model) : super(model);

  @override
  List<LevelMap> getLevelMaps() {
    return gameRepository.levels;
  }
}
