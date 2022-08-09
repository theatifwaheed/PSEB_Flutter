import 'package:flutter/material.dart';

class FinalExamQ7 extends StatefulWidget {
  const FinalExamQ7({Key? key}) : super(key: key);

  @override
  State<FinalExamQ7> createState() => _FinalExamQ7State();
}

class _FinalExamQ7State extends State<FinalExamQ7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.green,
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
