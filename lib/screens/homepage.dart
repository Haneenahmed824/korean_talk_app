//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screens/color_page.dart';
import 'package:toku/screens/familymembers_page.dart';
import 'package:toku/screens/numbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEADDD2),
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage('assets/images/korean_flag.jpg'),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Korean Talk',
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontFamily: 'Indie Flower',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xffA2B4B6),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Category('Numbers', '숫자', const Color.fromARGB(255, 225, 187, 189),
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            }),
            Category('Family Members', '가족들',
                const Color.fromARGB(255, 220, 177, 163), () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              }));
            }),
            Category(
                'Colors', '그림 물감', const Color.fromARGB(255, 176, 192, 164),
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            }),
            Category(
                'Phrases', '실없는 말', const Color.fromARGB(255, 195, 171, 154),
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            }),
          ],
        ),
      ),
    );
  }
}
