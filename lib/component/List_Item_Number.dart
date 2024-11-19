import 'package:flutter/material.dart';
import 'package:myapp/models/number.dart';
// import 'package:audioplayers/audioplayers.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Color(0xffEF9235),
      child: Row(
        children: [
          Container(color: Color(0xffFFF6DC), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jpName, style: TextStyle(color: Colors.white)),
                Text(number.enName, style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                // final player = AudioPlayer();
                // player.play(AssetSource(number.sound));
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
