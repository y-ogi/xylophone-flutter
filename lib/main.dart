import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({Color color, int keyNumber}) {
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
              buildKey(color: Colors.red, keyNumber: 1),
              buildKey(color: Colors.orange, keyNumber: 2),
              buildKey(color: Colors.yellow, keyNumber: 3),
              buildKey(color: Colors.green, keyNumber: 4),
              buildKey(color: Colors.teal, keyNumber: 5),
              buildKey(color: Colors.lightBlue, keyNumber: 6),
              buildKey(color: Colors.purple, keyNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

class SoundKeyWidget extends StatelessWidget {
  const SoundKeyWidget({Key key, this.soundNumber, this.keyColor})
      : super(key: key);

  final int soundNumber;
  final Color keyColor;

  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber: soundNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(keyColor),
        ),
        child: Container(),
      ),
    );
  }
}
