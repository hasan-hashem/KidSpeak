import 'package:flutter/material.dart';
import 'package:myapp/models/familynumber.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.familyNumber});
  final FamilyNumber familyNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: const Color.fromARGB(255, 30, 92, 40),
      child: Row(
        children: [
          Container(
              color: Color(0xffFFF6DC), child: Image.asset(familyNumber.image)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: const Color(0xffFFF6DC),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  familyNumber.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  familyNumber.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              // تأكد من إضافة الصوت المناسب هنا لاحقًا
              print('Play sound for ${familyNumber.jpName}');
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
