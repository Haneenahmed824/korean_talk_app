import 'package:flutter/material.dart';
import 'package:toku/models/colors.dart';

class CategoryCol extends StatelessWidget {
  const CategoryCol(this.color, {Key? key}) : super(key: key);
  final KColors color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: const Color.fromARGB(255, 211, 227, 204),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
            leading: Image.asset(
              color.imageColor,
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  color.kColorTxt,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  color.engColorTxt,
                  style: const TextStyle(fontSize: 15),
                )
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                color.playSoundC();
              },
              icon: const Icon(
                Icons.play_arrow,
                size: 30,
              ),
            )),
      ),
    );
  }
}
