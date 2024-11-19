import 'package:flutter/material.dart';
import 'package:myapp/component/List_Item_Number.dart';
import 'package:myapp/models/number.dart';

class Numbers extends StatelessWidget {
  const Numbers({super.key});
  final List<Number> numbers = const [
    Number(
        sound: 'sounds/numbers/number_one_sound.mp3',
        jpName: 'واحد',
        enName: '1',
        image: 'assets/images/numbers/number_one.png'),
    Number(
        sound: 'sounds/numbers/number_two_sound.mp3',
        jpName: 'اثنان',
        enName: '2',
        image: 'assets/images/numbers/number_two.png'),
    Number(
        sound: 'sounds/numbers/number_three_sound.mp3',
        jpName: 'ثلاثة',
        enName: '3',
        image: 'assets/images/numbers/number_three.png'),
    Number(
        sound: 'sounds/numbers/number_four_sound.mp3',
        jpName: 'أربعة',
        enName: '4',
        image: 'assets/images/numbers/number_four.png'),
    Number(
        sound: 'sounds/numbers/number_five_sound.mp3',
        jpName: 'خمسة',
        enName: '5',
        image: 'assets/images/numbers/number_five.png'),
    Number(
        sound: 'sounds/numbers/number_six_sound.mp3',
        jpName: 'ستة',
        enName: '6',
        image: 'assets/images/numbers/number_six.png'),
    Number(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        jpName: 'سبعة',
        enName: '7',
        image: 'assets/images/numbers/number_seven.png'),
    Number(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        jpName: 'ثمانية',
        enName: '8',
        image: 'assets/images/numbers/number_eight.png'),
    Number(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        jpName: 'تسعة',
        enName: '9',
        image: 'assets/images/numbers/number_eight.png'),
    Number(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        jpName: 'عشرة',
        enName: '10',
        image: 'assets/images/numbers/number_ten.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(number: numbers[index]);
        },
      ),
    );
  }
}

// List<Widget> getListNumber(List<Number> numbers) {
//   List<Widget> itemList = [];
//   for (var i = 0; i < numbers.length; i++) {
//     itemList.add(Item(number: numbers[i]));
//     print(i);
//   }
//   return itemList;
// }
