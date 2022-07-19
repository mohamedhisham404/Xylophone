import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  void playsound(int note) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$note.wav"),
    );
  }

  Expanded buildkey(int num, Color color) {
    return Expanded(
      child: FlatButton(
        child: const Text(" "),
        color: color,
        onPressed: () {
          playsound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(1, Colors.blue),
              buildkey(2, Colors.black38),
              buildkey(3, Colors.blue),
              buildkey(4, Colors.black38),
              buildkey(5, Colors.blue),
              buildkey(6, Colors.black38),
              buildkey(7, Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
