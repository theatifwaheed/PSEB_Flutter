import 'package:flutter/material.dart';
import 'package:pseb/Screens/Module8/Tasks/task1.dart';

import 'Tasks/task2.dart';
import 'Tasks/task3.dart';

class Module8Screen extends StatefulWidget {
  const Module8Screen({Key? key}) : super(key: key);

  @override
  State<Module8Screen> createState() => _Module8ScreenState();
}

class _Module8ScreenState extends State<Module8Screen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Random Generations"),
      ),
      body: Module8Task1(),
    );
  }
}
