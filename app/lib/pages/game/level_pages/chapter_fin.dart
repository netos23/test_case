import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level_map.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/pages/game/story_telling_utils.dart';
import 'package:test_case/router/app_router.dart';

@RoutePage()
class ChapterFinPageWidget extends StatefulWidget {
  const ChapterFinPageWidget({
    super.key,
    this.levelMap,
  });

  final LevelMap? levelMap;

  @override
  State<ChapterFinPageWidget> createState() => _ChapterFinPageWidgetState();
}

class _ChapterFinPageWidgetState extends State<ChapterFinPageWidget> {
  @override
  void initState() {
    super.initState();
    context.router.navigate(
      TellingRoute(messages: widget.levelMap?.helloMessage ?? []),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: SizedBox(
          height: 1300,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                widget.levelMap?.background ?? '',
                fit: BoxFit.cover,
                height: 1300,
              ),
              for (int index = 1;
                  index < (widget.levelMap?.levels?.length ?? 0);
                  index++)
                Positioned.fill(
                  child: CustomPaint(
                    painter: Line(
                      p1: Offset(
                        (80 + 150.0 * index) % 300,
                        150.0 * index,
                      ),
                      p2: Offset(
                        (80 + 150.0 * (index + 1)) % 300,
                        150.0 * (index + 1),
                      ),
                    ),
                  ),
                ),
              for (int index = 0;
                  index < (widget.levelMap?.levels?.length ?? 0);
                  index++)
                Positioned(
                  width: 100,
                  height: 100,
                  bottom: 40 + 150.0 * index,
                  left: (40 + 150.0 * index) % 300,
                  child: InkWell(
                    child: StreamBuilder<Set<int>>(
                        stream: AppComponents().gameRepository.passedGame,
                        builder: (context, snapshot) {
                          final set = snapshot.data;
                          if (set == null) {
                            return Container();
                          }
                          return Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: set.contains(
                                      widget.levelMap?.levels?[index].id)
                                  ? Colors.green
                                  : Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                widget.levelMap?.levels?[index].numeric
                                        .toString() ??
                                    '0',
                                style: const TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          );
                        }),
                    onTap: () async {
                      final route =
                          widget.levelMap?.levels?[index].levelPageBuilder;
                      await context.router.push(
                        TellingRoute(
                          messages:
                              widget.levelMap?.levels?[index].helloMessage ??
                                  [],
                        ),
                      );
                      if (route != null) {
                        if (context.mounted) {
                          final routing =
                              route(widget.levelMap?.levels?[index]);
                          await context.router.push(routing);
                        }
                      }
                    },
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class Line extends CustomPainter {
  final Offset p1;
  final Offset p2;

  Line({
    super.repaint,
    required this.p1,
    required this.p2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // var path = Path();
    // path.(p2.dx, p2.dy);
    const gradient = LinearGradient(
      colors: [Colors.red, Colors.orange, Colors.green],
    );
    final paint = Paint()
      ..shader = gradient.createShader(Rect.fromPoints(p1, p2))
      ..strokeWidth = 10;
    // path.quadraticBezierTo(size.width * 0.35, size.height * 0.4, size.width * 0.7, size.height * 0.21);
    // path.quadraticBezierTo(size.width * 0.6, size.height * 0.19, size.width * 0.9, size.height * 0.15);
    // path.quadraticBezierTo(size.width , size.height * 0.05, size.width * 0.6, 0);

    // canvas.drawPath(path, paint);
    canvas.drawLine(p1, p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
