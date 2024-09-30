import 'package:flutter/material.dart';
import 'package:toku/models/familymembers.dart';

//import 'package:audioplayers/audioplayers.dart';
class CategoryFam extends StatelessWidget {
  const CategoryFam(this.fMembers, {Key? key}) : super(key: key);
  final FamilyMembers fMembers;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: const Color.fromARGB(255, 236, 200, 188),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ListTile(
            leading: Image.asset(
              fMembers.imageFamily,
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  fMembers.kFamilyTxt,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  fMembers.engFamilyTxt,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                fMembers.playSoundF();
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
