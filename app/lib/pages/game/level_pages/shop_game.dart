import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_case/pages/game/domain/shop_page_configuration.dart';
import 'package:test_case/pages/game/level_pages/basket/basket_page.dart';

import '../../../domain/models/game/level.dart';

@RoutePage()
class ShopGamePageWidget extends StatelessWidget {
  const ShopGamePageWidget({
    super.key,
    @queryParam this.level,
    @queryParam this.config,
  });

  final Level? level;
  final ShopPageConfiguration? config;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BasketPage(
        level: level,
        config: config,
      ),
    );
  }
}
