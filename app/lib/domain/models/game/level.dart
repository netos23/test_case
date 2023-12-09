import 'package:auto_route/auto_route.dart';
import 'package:test_case/pages/game/components/red_button_variant.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';

import '../../../pages/game/domain/shop_page_configuration.dart';

typedef LevelPageBuilder = PageRouteInfo Function(Level? level);

class Level {
  // unique
  final int id;

  final bool isPassed;

  // message при старте уровня
  final List<Message>? helloMessage;

  // message при успешном выполнении уровня
  final List<Message>? byeMessage;

  // message при неправильном вопросе
  final List<Message>? wrongMessage;

  final List<RedButtonVariant>? variant;

  final int? numeric;

  final LevelPageBuilder levelPageBuilder;

  final ShopPageConfiguration? config;

  final Set<int>? loseVariant;
  final Set<int>? winVariant;

  Level({
    this.winVariant,
    this.loseVariant,
    this.isPassed = false,
    required this.id,
    this.config,
    this.variant,
    this.wrongMessage,
    this.numeric,
    this.helloMessage,
    this.byeMessage,
    required this.levelPageBuilder,
  });

  Level copyWith({
    int? id,
    bool? isPassed,
    List<Message>? helloMessage,
    List<Message>? byeMessage,
    List<Message>? wrongMessage,
    List<RedButtonVariant>? variant,
    int? numeric,
    LevelPageBuilder? levelPageBuilder,
    ShopPageConfiguration? config,
    Set<int>? loseVariant,
    Set<int>? winVariant,
  }) {
    return Level(
      id: id ?? this.id,
      isPassed: isPassed ?? this.isPassed,
      helloMessage: helloMessage ?? this.helloMessage,
      byeMessage: byeMessage ?? this.byeMessage,
      wrongMessage: wrongMessage ?? this.wrongMessage,
      variant: variant ?? this.variant,
      numeric: numeric ?? this.numeric,
      levelPageBuilder: levelPageBuilder ?? this.levelPageBuilder,
      config: config ?? this.config,
      loseVariant: loseVariant ?? this.loseVariant,
      winVariant: winVariant ?? this.winVariant,
    );
  }
}
