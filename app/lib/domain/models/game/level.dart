import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

class Level {
  final String? helloMessage;
  final int? numeric;
  final String? byeMessage;
  final String? correctMessage;

  final PageRouteInfo levelPage;

  Level({
    this.numeric,
    this.correctMessage,
    this.helloMessage,
    this.byeMessage,
    required this.levelPage,
  });
}
