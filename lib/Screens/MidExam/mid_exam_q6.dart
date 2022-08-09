import 'package:flutter/material.dart';

class MidExamQuestion6 extends StatelessWidget {
  const MidExamQuestion6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFE0E0E0),
            elevation: 5,
          ),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Contact Us',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          onPressed: () {
            print("Contact Us");
          },
        ),
      ),
    );
  }
}
