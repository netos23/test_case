import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract interface class IThemeProvider {
  ThemeData get theme;

  TextTheme get textTheme;

  ColorScheme get colorScheme;

  StackRouter get router;
}

mixin ThemeProvider {
  BuildContext get context;

  ThemeData get theme => Theme.of(context);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  StackRouter get router => context.router;
}
