import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildXylophoneKey({Color colors, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildXylophoneKey(colors: Colors.red, soundNumber: 1),
          buildXylophoneKey(colors: Colors.orange, soundNumber: 2),
          buildXylophoneKey(colors: Colors.yellow, soundNumber: 3),
          buildXylophoneKey(colors: Colors.green, soundNumber: 4),
          buildXylophoneKey(colors: Colors.teal, soundNumber: 5),
          buildXylophoneKey(colors: Colors.blue, soundNumber: 6),
          buildXylophoneKey(colors: Colors.purple, soundNumber: 7),
        ],
      ),
    );
  }
}
