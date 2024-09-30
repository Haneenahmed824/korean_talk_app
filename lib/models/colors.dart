import 'package:audioplayers/audioplayers.dart';

class KColors {
  const KColors(this.imageColor, this.kColorTxt, this.engColorTxt, this.soundC);
  final String imageColor;
  final String kColorTxt;
  final String engColorTxt;
  final String soundC;

  playSoundC() {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    player.play(AssetSource(soundC));
  }
}
