import 'package:flutter/material.dart';

class Module11Screen1 extends StatefulWidget {
  String data;
   Module11Screen1({Key? key, required this.data}) : super(key: key);

  @override
  State<Module11Screen1> createState() => _Module11Screen1State();
}

class _Module11Screen1State extends State<Module11Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2nd Screen"),
      ),
      body: Center(
        child: Text(
          widget.data
        ),
      ),
    );
  }
}
