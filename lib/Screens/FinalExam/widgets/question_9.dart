import 'package:flutter/material.dart';

class FinalExamQ9 extends StatefulWidget {
  const FinalExamQ9({Key? key}) : super(key: key);

  @override
  State<FinalExamQ9> createState() => _FinalExamQ9State();
}

class _FinalExamQ9State extends State<FinalExamQ9> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tab View"
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SizedBox(height: 6,),
            Divider(
              color: Color(0xFF66468E),
              thickness: 2,
            ),
            TabBar(
              tabs: [
                Tab(
                  text: "Home",
                ),
                Tab(
                  text: "Order",
                ),
                Tab(
                  text: "Login",
                ),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.blue,
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              indicatorColor: Color(0xFFD8A9A3),
            )
          ],
        ),
      ),
    );
  }
}
