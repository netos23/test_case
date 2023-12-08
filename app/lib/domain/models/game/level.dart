import 'package:auto_route/auto_route.dart';
import 'package:test_case/pages/game/components/red_button_variant.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';

import '../../../pages/game/domain/shop_page_configuration.dart';

typedef LevelPageBuilder = PageRouteInfo Function(Level? level);

class Level {
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

  Level({
    this.config,
    this.variant,
    this.wrongMessage,
    this.numeric,
    this.helloMessage,
    this.byeMessage,
    required this.levelPageBuilder,
  });
}
