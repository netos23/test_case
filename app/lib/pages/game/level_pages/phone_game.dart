import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:test_case/internal/app_components.dart';
import 'package:test_case/pages/game/components/red_alert_button.dart';

import '../../../domain/models/game/level.dart';

@RoutePage()
class PhoneGamePageWidget extends StatefulWidget {
  const PhoneGamePageWidget({
    super.key,
    this.level,
  });

  final Level? level;

  @override
  State<PhoneGamePageWidget> createState() => _PhoneGamePageWidgetState();
}

class _PhoneGamePageWidgetState extends State<PhoneGamePageWidget> {
  final _soundPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    _soundPlayer.setAsset(
      'assets/images/major.mp3',
    );
    playSound();
  }

  Future<void> playSound() async {
    await _soundPlayer.seek(Duration.zero);
    await _soundPlayer.play();
  }

  @override
  void dispose() {
    super.dispose();
    _soundPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/phone.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
              height: double.infinity,
            ),
          ),
        ],
      ),
      floatingActionButton: RedAlertButton(
        level: widget.level,
      ),
    );
  }
}
