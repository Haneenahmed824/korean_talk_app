import 'package:flutter/material.dart';
import 'package:toku/components/category_phrases.dart';
import 'package:toku/models/phrases.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 List<Phrases> phrasesList=const[ Phrases('What\'s Your Name?','ileum-i mwo-eyo?\n이름이 뭐에요?','sounds/phrases/whats_your_name_sound.mp3'),
      Phrases('Programming is easy.','peurogeulaeming-eun swibseubnida.\n프로그래밍은 쉽습니다.','sounds/phrases/programming_is_easy_sound.mp3'),
      Phrases('I Love Programming.','naneun peurogeulaeming-eul saranghanda.\n저는 프로그래밍을 좋아해요.','sounds/phrases/i_love_programming_sound.mp3'),
      Phrases('Are you okay?','gwaenchanh-euseyo?\n괜찮으세요?', 'sounds/phrases/are_you_okay_sound.mp3'),
      Phrases('How old are you?', 'myeoch sal-ieyo?\n몇 살이에요?', 'sounds/phrases/how_old_are_you_sound.mp3'),
      Phrases('I\'m Sorry.', 'joesonghabnida.\n죄송합니다.', 'sounds/phrases/iamsorry_sound.mp3'),
      Phrases('I Love You.', 'saranghaeyo.\n사랑해요.', 'sounds/phrases/iloveyou_sound.mp3'),
      Phrases('Please.', 'jebal.\n제발.', 'sounds/phrases/please_sound.mp3'),
      Phrases('Where are you going?','eodi gaseyo?\n어디 가세요?','sounds/phrases/where_are_you_going_sound.mp3'),
      Phrases('Are You Coming?','osinayo?\n오시나요?','sounds/phrases/are_you_coming_sound.mp3'),
      Phrases('yes, I\'m Coming.','de, galgeyo.\n네, 갈게요.','sounds/phrases/yes_iam_coming_sound.mp3'),
      Phrases('I Love Anime.','naneun aenimeisyeon-eul saranghanda.\n저는 애니메이션을 좋아해요.','sounds/phrases/i_love_anime_sound.mp3'),
      Phrases('How Are You Feeling?','gibun-i eotteyo?\n기분이 어떠세요?','sounds/phrases/how_are_you_feeling_sound.mp3'),
      Phrases('Don\'t Forget To Subscribe!','gudoghaneun geos-eul ij-ji maseyo!\n구독하는 것을 잊지 마세요!','sounds/phrases/dontforget_to_subscribe_sound.mp3'),];
            
      return Scaffold(
        backgroundColor: const Color(0xffEADDD2),
        appBar: AppBar(
          title: const Text(
            'Phrases',
            style: TextStyle(fontSize: 28, color: Colors.white,fontFamily: 'Playwrite Deutschland Grundschrift',fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xffA2B4B6),
        ),
        body: ListView.builder(
            itemCount: phrasesList.length,
            itemBuilder: (context, index) {
              return CategoryPh(phrasesList[index]);
            }));
  }
  }
