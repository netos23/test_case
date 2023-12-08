import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_case/pages/game/components/red_button_variant.dart';
import 'package:test_case/router/app_router.dart';

import '../../../domain/models/game/level.dart';

class RedAlertButton extends StatelessWidget {
  const RedAlertButton({
    super.key,
    @queryParam this.level,
  });

  final Level? level;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return ModalSheetContent(
              level: level,
            );
          },
        );
      },
      child: Container(
        height: 75,
        width: 75,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
        ),
        child: const Center(
          child: Text(
            '!',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class ModalSheetContent extends StatefulWidget {
  const ModalSheetContent({
    super.key,
    this.level,
  });

  final Level? level;

  @override
  State<ModalSheetContent> createState() => _ModalSheetContentState();
}

class _ModalSheetContentState extends State<ModalSheetContent> {
  int numberOfChecked = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        children: [
          for (int index = 0;
              index < (widget.level?.variant?.length ?? 0);
              index++)
            RadioListTile<int>(
              value: index,
              title: Text(widget.level?.variant?[index].message ?? ''),
              groupValue: numberOfChecked,
              onChanged: (value) {
                setState(
                  () {
                    numberOfChecked = value ?? -1;
                  },
                );
              },
            ),
          ElevatedButton(
            onPressed: numberOfChecked == -1
                ? null
                : () {
                    // здесь логика
                    // показывается storytelling взависимости от правильного или неправильного ответа
                    // а также происходит ридерект на главную (проработать смену цвета, уже пройденного теста)
                    final rightAnswer = widget.level?.variant
                        ?.indexWhere((element) => element.isTrue);
                    if (numberOfChecked == rightAnswer) {
                      context.router.popUntilRouteWithName(
                        ChapterFinRoute.name,
                      );
                      context.router.push(
                        TellingRoute(
                          messages: widget.level?.byeMessage ?? [],
                        ),
                      );
                    } else {
                      context.router.popUntilRouteWithName(
                        ChapterFinRoute.name,
                      );
                      context.router.push(
                        TellingRoute(
                          messages: widget.level?.wrongMessage ?? [],
                        ),
                      );
                    }
                  },
            child: const Text('Проверить'),
          ),
        ],
      ),
    );
  }
}
