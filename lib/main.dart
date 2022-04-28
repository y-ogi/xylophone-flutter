import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({int soundNumber}) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(soundNumber: 1);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(soundNumber: 2);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orange),
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(soundNumber: 3);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(soundNumber: 4);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(soundNumber: 5);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(soundNumber: 6);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue),
                  ),
                  child: Container(),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(soundNumber: 7);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                  ),
                  child: Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
