import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SoundKeyWidget(keyColor: Colors.red, soundNumber: 1),
              SoundKeyWidget(keyColor: Colors.orange, soundNumber: 2),
              SoundKeyWidget(keyColor: Colors.yellow, soundNumber: 3),
              SoundKeyWidget(keyColor: Colors.green, soundNumber: 4),
              SoundKeyWidget(keyColor: Colors.teal, soundNumber: 5),
              SoundKeyWidget(keyColor: Colors.blue, soundNumber: 6),
              SoundKeyWidget(keyColor: Colors.purple, soundNumber: 7),
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
