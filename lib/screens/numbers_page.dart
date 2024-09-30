import 'package:flutter/material.dart';
import 'package:toku/components/category_numbers.dart';
import 'package:toku/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Numbers> numbersList = const [
      Numbers(
        'assets/images/numbers/number_one.png',
        'hana (하나)',
        'One',
        'sounds/numbers/number_one_sound.mp3',
      ),
      Numbers(
        'assets/images/numbers/number_two.png',
        'dul (둘)',
        'Two',
        'sounds/numbers/number_two_sound.mp3',
      ),
      Numbers(
        'assets/images/numbers/number_three.png',
        'Set (셋)',
        'Three',
        'sounds/numbers/number_three_sound.mp3',
      ),
      Numbers(
        'assets/images/numbers/number_four.png',
        'net (넷)',
        'Four',
        'sounds/numbers/number_four_sound.mp3',
      ),
      Numbers(
        'assets/images/numbers/number_five.png',
        'daseot (다섯)',
        'Five',
        'sounds/numbers/number_five_sound.mp3',
      ),
      Numbers(
        'assets/images/numbers/number_six.png',
        'yeoseot (여섯)',
        'Six',
        'sounds/numbers/number_six_sound.mp3',
      ),
      Numbers(
        'assets/images/numbers/number_seven.png',
        'ilgop (일곱)',
        'Seven',
        'sounds/numbers/number_seven_sound.mp3',
      ),
      Numbers(
        'assets/images/numbers/number_eight.png',
        'yeodeol (여덟)',
        'Eight',
        'sounds/numbers/number_eight_sound.mp3',
      ),
      Numbers(
        'assets/images/numbers/number_nine.png',
        'ahop (아홉)',
        'Nine',
        'sounds/numbers/number_nine_sound.mp3',
      ),
      Numbers(
        'assets/images/numbers/number_ten.png',
        'yeol (열)',
        'Ten',
        'sounds/numbers/number_ten_sound.mp3',
      )
    ];
    return Scaffold(
        backgroundColor: const Color(0xffEADDD2),
        appBar: AppBar(
          title: const Text(
            'Numbers',
            style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontFamily: 'Playwrite Deutschland Grundschrift',
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xffA2B4B6),
        ),
        body: ListView.builder(
            itemCount: numbersList.length,
            itemBuilder: (context, index) {
              return CategoryNum(numbersList[index]);
            }));
  }
}
