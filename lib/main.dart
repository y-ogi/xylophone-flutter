import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Container(),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                child: Container(),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                ),
                child: Container(),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Container(),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal),
                ),
                child: Container(),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                ),
                child: Container(),
              ),
              TextButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                ),
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
