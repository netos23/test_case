import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SecurePageWidget extends StatelessWidget {
  const SecurePageWidget({
    super.key,
    @queryParam required this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.50),
      body: SizedBox(
        height: 1000,
        child: InkWell(
          onTap: () {
            context.router.pop();
          },
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned(
                top: 200,
                width: 200,
                height: 150,
                left: 25,
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
                right: -150,
                width: 400,
                height: 400,
                child: Image.asset('assets/images/naiv.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
