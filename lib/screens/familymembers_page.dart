import 'package:flutter/material.dart';
import 'package:toku/components/category_family.dart';
import 'package:toku/models/familymembers.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage();

  @override
  Widget build(BuildContext context) {
    List<FamilyMembers> familyList = const [
      FamilyMembers(
        'assets/images/family_members/family_father.png',
        'appa (아빠)',
        'Father',
        'sounds/family_members/father_sound.mp3',
      ),
      FamilyMembers(
        'assets/images/family_members/family_mother.png',
        'eomma (엄마)',
        'Mother',
        'sounds/family_members/mother_sound.mp3',
      ),
      FamilyMembers(
        'assets/images/family_members/family_grandfather.png',
        'harabeogi (할아버님)',
        'Grandfather',
        'sounds/family_members/grandfather_sound.mp3',
      ),
      FamilyMembers(
        'assets/images/family_members/family_grandmother.png',
        'halmeonim (할머님)',
        'Grandmother',
        'sounds/family_members/grandmother_sound.mp3',
      ),
      FamilyMembers(
        'assets/images/family_members/family_older_brother.png',
        'oppa (오빠)',
        'Older brother',
        'sounds/family_members/olderbrother_sound.mp3',
      ),
      FamilyMembers(
        'assets/images/family_members/family_older_sister.png',
        'eonni (언니)',
        'Older sister',
        'sounds/family_members/oldersister_sound.mp3',
      ),
      FamilyMembers(
        'assets/images/family_members/family_daughter.png',
        'ttal (딸)',
        'Daughter',
        'sounds/family_members/daughter_sound.mp3',
      ),
      FamilyMembers(
        'assets/images/family_members/family_son.png',
        'adeul (아들)',
        'Son',
        'sounds/family_members/son_sound.mp3',
      ),
      FamilyMembers(
        'assets/images/family_members/family_younger_brother.png',
        'namdongsaeng (남동생)',
        'Younger brother',
        'sounds/family_members/youngerbrother_sound.mp3',
      ),
      FamilyMembers(
        'assets/images/family_members/family_younger_sister.png',
        'yeodongsaeng (여동생)',
        'Younger sister',
        'sounds/family_members/youngersister_sound.mp3',
      ),
    ];

    return Scaffold(
        backgroundColor: Color(0xffEADDD2),
        appBar: AppBar(
          title: const Text(
            'Family Members',
            style: TextStyle(fontSize: 28, color: Colors.white,fontFamily: 'Playwrite Deutschland Grundschrift',fontWeight: FontWeight.bold),
          ),
          backgroundColor:  Color(0xffA2B4B6),
        ),
        body: ListView.builder(
            itemCount: familyList.length,
            itemBuilder: (context, index) {
              return CategoryFam(familyList[index]);
            }));
  }
}
