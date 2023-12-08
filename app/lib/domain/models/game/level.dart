import 'package:flutter/cupertino.dart';

class Level {
  final String? helloMessage;

  final String? byeMessage;
  final String? correctMessage;

  final Widget? levelPage;

  Level({
    this.correctMessage,
    this.helloMessage,
    this.byeMessage,
    this.levelPage,
  });
}
