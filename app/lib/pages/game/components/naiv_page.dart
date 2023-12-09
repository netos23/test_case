import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NaivPageWidget extends StatefulWidget {
  const NaivPageWidget({
    super.key,
    @queryParam required this.text,
  });

  final String? text;

  @override
  State<NaivPageWidget> createState() => _NaivPageWidgetState();
}

class _NaivPageWidgetState extends State<NaivPageWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(-0.2, 0.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  ));

  late final AnimationController _robotController = AnimationController(
    duration: const Duration(milliseconds: 300),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetRobotAnimation = Tween<Offset>(
    begin: const Offset(0.2, 0.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _robotController,
    curve: Curves.linear,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 175,
          width: 250,
          height: 150,
          left: 25,
          child: SlideTransition(
            position: _offsetAnimation,
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(widget.text ?? ''),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: -150,
          width: 400,
          height: 400,
          child: SlideTransition(
            position: _offsetRobotAnimation,
            child: Image.asset('assets/images/naiv.png'),
          ),
        ),
      ],
    );
  }
}
