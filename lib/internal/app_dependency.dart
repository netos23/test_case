import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppDependency extends StatelessWidget {
  const AppDependency({
    Key? key,
    required this.app,
  }) : super(key: key);

  final Widget app;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ValueNotifier(ThemeMode.light),
        ),
      ],
      child: app,
    );
  }
}
