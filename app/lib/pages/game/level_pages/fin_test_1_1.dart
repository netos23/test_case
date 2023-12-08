import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level.dart';
import 'package:test_case/pages/game/components/red_alert_button.dart';
import 'package:test_case/router/app_router.dart';

@RoutePage()
class FinTest1_1PageWidget extends StatelessWidget {
  const FinTest1_1PageWidget({
    super.key,
    this.level,
  });

  final Level? level;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          children: [
            const Text(
                'И всего один шаг до того, что бы порадовать ваших любимых!'),
            const TextField(
              decoration: InputDecoration(hintText: 'Номер Карты'),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'MM/YY'),
            ),
            const TextField(
              decoration: InputDecoration(hintText: 'CVV'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                context.router.popUntilRouteWithName(
                  ChapterFinRoute.name,
                );
                context.router.push(
                  TellingRoute(
                    messages: level?.wrongMessage ?? [],
                  ),
                );
              },
              child: const Text('ОПЛАТИТЬ!!!'),
            ),
          ],
        ),
      ),
      floatingActionButton: RedAlertButton(
        level: level,
      ),
    );
  }
}
