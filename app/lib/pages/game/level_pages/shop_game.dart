import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:test_case/pages/games/shop/page/basket/basket_page.dart';

@RoutePage()
class ShopGamePageWidget extends StatelessWidget {
  const ShopGamePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BasketPage(),
    );
  }
}
