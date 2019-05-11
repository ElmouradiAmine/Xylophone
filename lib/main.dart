import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xylophoneButton(Colors.red, 1),
              xylophoneButton(Colors.orange, 2),
              xylophoneButton(Colors.yellow, 3),
              xylophoneButton(Colors.lightGreen, 4),
              xylophoneButton(Colors.green, 5),
              xylophoneButton(Colors.blue, 6),
              xylophoneButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }

  Widget xylophoneButton(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

}
