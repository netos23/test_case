import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecurePageWidget extends StatelessWidget {
  const SecurePageWidget({
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
          top: 200,
          width: 200,
          height: 150,
          right: 25,
          child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(text ?? ''),
                ),
              )),
        ),
        Positioned(
          bottom: 0,
          left: -150,
          width: 400,
          height: 400,
          child: Image.asset('assets/images/secure.png'),
        ),
      ],
    );
  }
}
