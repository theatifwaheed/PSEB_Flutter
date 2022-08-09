import 'dart:math';

import 'package:flutter/material.dart';

class Module8Task2 extends StatefulWidget {
  const Module8Task2({Key? key}) : super(key: key);

  @override
  State<Module8Task2> createState() => _Module8Task2State();
}

class _Module8Task2State extends State<Module8Task2> {
  void randomGenerator() {
    var randomNumber = Random();
    int ran = randomNumber.nextInt(1000);
    if (ran % 2 == 0) {
      setState(() {
        eo = "Even";
        value = ran;
      });
    } else {
      setState(() {
        eo = "Odd";
        value = ran;
      });
    }
  }

  int value = 0;
  String eo = "Even";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value.toString(),
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "is",
            style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.normal,
                color: Colors.black),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            eo,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.green),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: randomGenerator,
              child: const Text("Generate and Check")),
        ],
      ),
    );
  }
}
