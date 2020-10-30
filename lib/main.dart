import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart'; // importing my Audio Cache player

void main() => runApp(
    XylophoneApp()); // using the fat arrow to implement one liner main function

class XylophoneApp extends StatelessWidget {
  // a stateless widget called XylophoneApp

  void playSound(int num) // class function to play Sound the number
  {
    final player = AudioCache(); // AudioCache object called 'player'
    player
        .play('note$num.wav'); // player, plays the note according to the number
  }

  Expanded xylophoneKeys(
      {int soundNumber,
      Color keyColor}) // function xylophoneKeys to return a xylophone key as an Expanded widget
  {
    return Expanded(
      child: FlatButton( // Flat button
        onPressed: () {
          playSound(soundNumber); // setting onPressed field to play sound corresponding to the soundNumber
        },
        color: keyColor, // setting color to the keyColor passed in
        child: Text('')
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  xylophoneKeys(soundNumber: 1, keyColor: Colors.red),
                  xylophoneKeys(soundNumber: 2, keyColor: Colors.orange),
                  xylophoneKeys(soundNumber: 3, keyColor: Colors.yellow),
                  xylophoneKeys(soundNumber: 4, keyColor: Colors.green),
                  xylophoneKeys(soundNumber: 5, keyColor: Colors.teal),
                  xylophoneKeys(soundNumber: 6, keyColor: Colors.blue),
                  xylophoneKeys(soundNumber: 7, keyColor: Colors.purple)
                ],
              ),
            ),
          )),
    );
  }
}
