import 'package:flutter/material.dart';

class FinalExamQ8 extends StatefulWidget {
  const FinalExamQ8({Key? key}) : super(key: key);

  @override
  State<FinalExamQ8> createState() => _FinalExamQ8State();
}

class _FinalExamQ8State extends State<FinalExamQ8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 1; i < 5; i++)
                const Icon(
                  Icons.settings,
                  size: 25,
                )
            ],
          )
        ],
      ),
    );
  }
}
