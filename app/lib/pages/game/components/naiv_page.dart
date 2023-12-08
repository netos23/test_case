import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NaivPageWidget extends StatelessWidget {
  const NaivPageWidget({
    super.key,
    @queryParam required this.text,
  });

  final String? text;

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
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(text ?? ''),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: -150,
          width: 400,
          height: 400,
          child: Image.asset('assets/images/naiv.png'),
        ),
      ],
    );
  }
}
