import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int idx}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(idx);
          }),
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
            children: <Widget>[
              buildKey(color: Colors.red, idx: 1),
              buildKey(color: Colors.orange, idx: 2),
              buildKey(color: Colors.yellow, idx: 3),
              buildKey(color: Colors.green, idx: 4),
              buildKey(color: Colors.teal, idx: 5),
              buildKey(color: Colors.blue, idx: 6),
              buildKey(color: Colors.purple, idx: 7),
            ],
          ),
        ),
      ),
    );
  }
}
