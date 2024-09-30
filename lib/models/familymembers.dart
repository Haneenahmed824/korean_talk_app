import 'package:audioplayers/audioplayers.dart';

class FamilyMembers {
  final String imageFamily;
  final String kFamilyTxt;
  final String engFamilyTxt;
  final String soundF;
  const FamilyMembers(
      this.imageFamily, this.kFamilyTxt, this.engFamilyTxt, this.soundF);

  playSoundF() {
    AudioCache.instance = AudioCache(prefix: '');
    final player = AudioPlayer();
    player.play(AssetSource(soundF));
  }
}
