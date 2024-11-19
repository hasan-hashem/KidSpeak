import 'package:flutter/material.dart';
import 'package:myapp/Screens/FamilyNumber_Page.dart';
import 'package:myapp/Screens/Numbers_Page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tokuapp',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff46322B),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Numbers();
              }));
            },
            child: Container(
              padding: EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              height: 75,
              width: double.infinity,
              child: Text(
                'Numbers',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              color: Colors.blue,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FamilynumberPage();
              }));
            },
            child: Container(
              padding: EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              height: 75,
              width: double.infinity,
              child: Text(
                'FamilyNumbers',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              color: const Color.fromARGB(255, 2, 48, 9),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            height: 75,
            width: double.infinity,
            child: Text(
              'Color',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            color: const Color.fromARGB(255, 92, 70, 86),
          ),
          Container(
            padding: EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            height: 75,
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  Icons.control_point,
                  color: Colors.white,
                ),
                Spacer(),
                Text(
                  'Phrases',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Spacer(
                  flex: 30,
                )
              ],
            ),
            color: const Color.fromARGB(255, 65, 14, 34),
          ),
        ],
      ),
    );
  }
}
