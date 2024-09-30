import 'package:audioplayers/audioplayers.dart';

class Phrases {
  const Phrases(this.engPhrase, this.kPhrase, this.soundP);
  final String kPhrase;
  final String engPhrase;
  final String soundP;
  playSoundP() {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    player.play(AssetSource(soundP));
  }
}
