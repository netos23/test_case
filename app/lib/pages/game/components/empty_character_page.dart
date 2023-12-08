import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EmptyCharacterPageWidget extends StatelessWidget {
  const EmptyCharacterPageWidget({
    super.key,
    @queryParam required this.text,
  });

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Center(
          child: SizedBox(
            width: 300,
            height: 200,
            child: Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(text ?? '', textAlign: TextAlign.center,),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
