import 'package:flutter/material.dart';

class Module8Task1 extends StatefulWidget {
  const Module8Task1({Key? key}) : super(key: key);

  @override
  State<Module8Task1> createState() => _Module8Task1State();
}

class _Module8Task1State extends State<Module8Task1> {
  void increment() {
    setState(() {
      value++;
    });
  }

  int value = 0;

  void decrement() {
    setState(() {
      value--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: increment,
                child: const Text("Increment"),
              ),
              Text(
                value.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30
                ),
              ),
              ElevatedButton(
                onPressed: decrement,
                child: const Text("Decrement"),
              ),
            ],
          )
        ],
      );
  }
}
