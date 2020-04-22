import 'dart:ffi';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                getExpandedBtn(1, Colors.red),
                getExpandedBtn(2, Colors.orangeAccent),
                getExpandedBtn(3, Colors.yellow),
                getExpandedBtn(4, Colors.green),
                getExpandedBtn(5, Colors.teal),
                getExpandedBtn(6, Colors.blue),
                getExpandedBtn(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded getExpandedBtn(int btnNum, Color btnColor) {
    return Expanded(
      child: FlatButton(
        color: btnColor,
        onPressed: () {
          playAudio(btnNum);
        },
      ),
    );
  }

  void playAudio(int buttonNo) {
    final player = AudioCache();
    player.play('note$buttonNo.wav');
  }
}
