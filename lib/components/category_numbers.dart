import 'package:flutter/material.dart';
import 'package:toku/models/numbers.dart';

class CategoryNum extends StatelessWidget {
  const CategoryNum(this.number, {Key? key}) : super(key: key);
  final Numbers number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        //color: Color.fromARGB(255, 225, 194, 195),
        color: const Color(0xffEECBD2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
            leading: Image.asset(
              number.imageN,
              // height: 300,
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  number.kNumTxt,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  number.engNumTxt,
                  style: const TextStyle(fontSize: 15),
                )
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                number.playSoundN();
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
