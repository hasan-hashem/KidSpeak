import 'package:flutter/material.dart';
import 'package:myapp/component/List_Item_FamilyNumber.dart';
import 'package:myapp/models/familynumber.dart';

class FamilynumberPage extends StatelessWidget {
  const FamilynumberPage({super.key});

  final List<FamilyNumber> familyMembers = const [
    FamilyNumber(
        jpName: 'الأب',
        enName: 'Father',
        image: 'assets/images/family_members/family_father.png'),
    FamilyNumber(
        jpName: 'الأم',
        enName: 'Mother',
        image: 'assets/images/family_members/family_mother.png'),
    FamilyNumber(
        jpName: 'الأخ',
        enName: 'Brother',
        image: 'assets/images/family_members/family_older_brother.png'),
    FamilyNumber(
        jpName: 'الأخت',
        enName: 'Sister',
        image: 'assets/images/family_members/family_older_sister.png'),
    FamilyNumber(
        jpName: 'الجد',
        enName: 'Grandfather',
        image: 'assets/images/family_members/family_grandfather.png'),
    FamilyNumber(
        jpName: 'الجدة',
        enName: 'Grandmother',
        image: 'assets/images/family_members/family_grandmother.png'),
    FamilyNumber(
        jpName: 'الحفيد',
        enName: 'Grandmother',
        image: 'assets/images/family_members/family_younger_brother.png'),
    FamilyNumber(
        jpName: 'الحفيدة',
        enName: 'Grandmother',
        image: 'assets/images/family_members/family_younger_sister.png'),
    FamilyNumber(
        jpName: 'الرضيع',
        enName: 'Grandmother',
        image: 'assets/images/family_members/family_son.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 48, 9),
        title: Text('FamilynumberPage', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Item(familyNumber: familyMembers[index]);
        },
      ),
    );
  }
}
