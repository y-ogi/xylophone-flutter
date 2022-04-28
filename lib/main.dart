import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({int keyNumber}) {
    Color color;
    switch (keyNumber) {
      case 1:
        color = Colors.red;
        break;
      case 2:
        color = Colors.orange;
        break;
      case 3:
        color = Colors.yellow;
        break;
      case 4:
        color = Colors.green;
        break;
      case 5:
        color = Colors.teal;
        break;
      case 6:
        color = Colors.lightBlue;
        break;
      case 7:
        color = Colors.purple;
        break;
      default:
    }
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber: keyNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(keyNumber: 1),
              buildKey(keyNumber: 2),
              buildKey(keyNumber: 3),
              buildKey(keyNumber: 4),
              buildKey(keyNumber: 5),
              buildKey(keyNumber: 6),
              buildKey(keyNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
