import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_case/domain/models/game/level.dart';

@RoutePage()
class ChapterFinPageWidget extends StatelessWidget {
  const ChapterFinPageWidget({
    super.key,
    @queryParam this.levels = const [],
  });

  final List<Level> levels;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: SizedBox(
          height: 1000,
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Positioned.fill(
              //   child: Container(
              //     height: 1000,
              //     child: ListView.separated(
              //       itemBuilder: (context, index) {
              //         return InkWell(
              //           child: Container(
              //             width: 100,
              //             height: 100,
              //             decoration: const BoxDecoration(
              //               shape: BoxShape.circle,
              //               color: Colors.black,
              //             ),
              //             child: Text(levels[index].numeric.toString() ?? '0'),
              //           ),
              //           onTap: () {
              //             context.router.push(levels[index].levelPage);
              //           },
              //         );
              //       },
              //       separatorBuilder: (BuildContext context, int index) {
              //         return const SizedBox(
              //           height: 100,
              //         );
              //       },
              //       itemCount: levels.length,
              //     ),
              //   ),
              // ),
              Image.asset(
                'assets/images/forest.png',
                fit: BoxFit.cover,
                height: 800,
              ),
              for (int index = 0; index < levels.length; index++)
                Positioned(
                  width: 100,
                  height: 100,
                  bottom: 40 + 150.0 * index,
                  left: 40 + 20.0 * index,
                  child: InkWell(
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          levels[index].numeric.toString() ?? '0',
                          style: const TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      context.router.push(levels[index].levelPage);
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
