import 'package:flutter/material.dart';
import 'package:toku/components/category_colors.dart';
import 'package:toku/models/colors.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   List<KColors> colorsList = const [
      KColors(
        'assets/images/colors/color_white.png',
        'hayansaek (하얀색)',
        'White',
        'sounds/colors/white2_sound.mp3',
      ),
      KColors(
        'assets/images/colors/color_gray.png',
        'hoesaek (회색)',
        'Gray',
        'sounds/colors/gray_sound.mp3',
      ),
      KColors(
        'assets/images/colors/color_green.png',
        'choroksaek (초록색)',
        'Green',
        'sounds/colors/green_sound.mp3',
      ),
      KColors(
        'assets/images/colors/color_brown.png',
        'galsaek (갈색)',
        'Brown',
        'sounds/colors/brown_sound.mp3',
      ),
      KColors(
        'assets/images/colors/color_red.png',
        'ppalgansaek (빨간색)',
        'Red',
        'sounds/colors/red_sound.mp3',
      ),
      KColors(
        'assets/images/colors/color_black.png',
        'geomeunsaek(검정색)',
        'Black',
        'sounds/colors/black_sound.mp3',
      ),
      KColors(
        'assets/images/colors/yellow.png',
        'noransaek (노란색)',
        'Yellow',
        'sounds/colors/yellow_sound.mp3',
      )
    ];

    return Scaffold(
        backgroundColor: const Color(0xffEADDD2),
        appBar: AppBar(
          title: const Text(
            'Colors',
            style: TextStyle(fontSize: 28, color: Colors.white,fontFamily: 'Playwrite Deutschland Grundschrift',fontWeight: FontWeight.bold),
          ),
          backgroundColor: const Color(0xffA2B4B6),
        ),
        body: ListView.builder(
            itemCount: colorsList.length,
            itemBuilder: (context, index) {
              return CategoryCol(colorsList[index]);
            }));
  }
}