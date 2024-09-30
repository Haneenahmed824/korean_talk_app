import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category(this.text1, this.text2, this.color, this.onTap, {Key? key})
      : super(key: key);
  String? text1;
  String? text2;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: color),
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 30),
          child: Row(
            children: [
              Text(
                text1!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Playwrite Deutschland Grundschrift',
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(
                flex: 1,
              ),
              Text(
                text2!,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
