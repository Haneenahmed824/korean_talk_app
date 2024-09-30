import 'package:audioplayers/audioplayers.dart';

class Numbers {
  const Numbers(this.imageN, this.kNumTxt, this.engNumTxt, this.soundN);
  final String imageN;
  final String kNumTxt;
  final String engNumTxt;
  final String soundN;

  playSoundN() {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    player.play(AssetSource(soundN));
  }
}
