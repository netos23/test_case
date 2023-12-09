
import 'package:just_audio/just_audio.dart';

class SoundController {
  final _soundPlayer = AudioPlayer();

  Future<void> init() async {
    await _soundPlayer.setAsset(
      'assets/images/sound_17216.mp3',
    );
  }

  Future<void> playSound() async {
    await _soundPlayer.seek(Duration.zero);
    await _soundPlayer.play();
  }

  void dispose() {
    _soundPlayer.dispose();
  }
}
