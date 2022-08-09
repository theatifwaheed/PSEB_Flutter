import 'dart:math';

import 'package:flutter/material.dart';

class Module8Task3 extends StatefulWidget {
  const Module8Task3({Key? key}) : super(key: key);

  @override
  State<Module8Task3> createState() => _Module8Task3State();
}

class _Module8Task3State extends State<Module8Task3> {
  Color containerColor = Colors.blue;
  double rad = 50;
  BorderRadius borderradius = BorderRadius.circular(50);

  void retRandomRad() {
    var rand = Random();
    rad = rand.nextInt(200).toDouble();
  }

  void randomColor(){
    var random = Random();
    int ran = random.nextInt(listColor.length);
    setState((){
      containerColor = listColor[ran];
    });
  }

  void randomShape(){
    var random = Random();
    int ran = random.nextInt(200);
    setState((){
      borderradius = BorderRadius.circular(ran.toDouble());
    });
  }

  List<Color> listColor = [
    // Colors.white,
    Colors.black,
    Colors.pink,
    // Colors.transparent,
    Colors.blueAccent,
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.pink,
    Colors.purple,
    Colors.lime,
    Colors.orange,
    Colors.greenAccent,
    Colors.green,
    Colors.indigo
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: ),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: borderradius,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              width: 200,
              child: ElevatedButton(
                onPressed: randomColor,
                child: const Text("Random Color"),
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white, primary: Colors.red),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 200,
              child: ElevatedButton(
                onPressed: randomShape,
                child: const Text("Toggle Shape"),
              )),
        ],
      ),
    );
  }
}
