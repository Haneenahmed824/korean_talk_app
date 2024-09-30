import 'package:flutter/material.dart';
import 'package:toku/models/phrases.dart';

class CategoryPh extends StatelessWidget {
  const CategoryPh(this.phrase, {Key? key}) : super(key: key);
  final Phrases phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 210, 188, 174)),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 22),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(phrase.engPhrase,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  phrase.kPhrase,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            IconButton(
                onPressed: () {
                  phrase.playSoundP();
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}
