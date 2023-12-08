import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FinTest1_1PageWidget extends StatelessWidget {
  const FinTest1_1PageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
          ElevatedButton(
            onPressed: () {},
            child: const Text('ОПЛАТИТЬ!!!'),
          ),
        ],
      ),
    );
  }
}
