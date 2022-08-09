import 'package:flutter/material.dart';

class Module11Screen2 extends StatelessWidget {
  String data;
  Module11Screen2({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("3rd Screen"),
      ),
      body: Center(
        child: Text(
            data
        ),
      ),
    );
  }
}
