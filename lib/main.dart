import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound({String audioFile}) {
    final player = AudioCache();
    player.play(audioFile);
  }

  Expanded buildKey({int buttonNumber, Color colorCode}) {
    return Expanded(
      child: FlatButton(
        color: colorCode,
        onPressed: () {
          playSound(audioFile: 'note$buttonNumber.wav');
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(buttonNumber: 1, colorCode: Colors.deepPurple),
                buildKey(buttonNumber: 2, colorCode: Colors.indigo),
                buildKey(buttonNumber: 3, colorCode: Colors.blue),
                buildKey(buttonNumber: 4, colorCode: Colors.green),
                buildKey(buttonNumber: 5, colorCode: Colors.yellow),
                buildKey(buttonNumber: 6, colorCode: Colors.orange),
                buildKey(buttonNumber: 7, colorCode: Colors.red),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
