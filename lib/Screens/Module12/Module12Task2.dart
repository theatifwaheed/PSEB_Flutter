import 'package:flutter/material.dart';

class Module12Task2_ extends StatefulWidget {
  const Module12Task2_({Key? key}) : super(key: key);

  @override
  State<Module12Task2_> createState() => _Module12Task2_State();
}

class _Module12Task2_State extends State<Module12Task2_> {
  void soundPlayer(int note) {
    // final player = AudioCache();
    // player.play('note$note.wav');
  }

  Expanded xylophonefun({required Color color, required int soundPlay}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          soundPlayer(soundPlay);
        },
        child: Text("Press Me"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Xylophone'),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              xylophonefun(color: Colors.orange, soundPlay: 1),
              xylophonefun(color: Colors.yellow, soundPlay: 2),
              xylophonefun(color: Colors.pink, soundPlay: 3),
              xylophonefun(color: Colors.purple, soundPlay: 4),
              xylophonefun(color: Colors.indigo, soundPlay: 5),
              xylophonefun(color: Colors.red, soundPlay: 6),
              xylophonefun(color: Colors.brown, soundPlay: 7),
            ],
          ),
        ),
      ),
    );
  }
}
