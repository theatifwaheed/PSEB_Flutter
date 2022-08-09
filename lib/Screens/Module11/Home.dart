import 'package:flutter/material.dart';
import 'package:pseb/Screens/Module11/Screen1.dart';
import 'package:pseb/Screens/Module11/Screen2.dart';

class Module11HomeScreen extends StatefulWidget {
  const Module11HomeScreen({Key? key}) : super(key: key);

  @override
  State<Module11HomeScreen> createState() => _Module11HomeScreenState();
}

class _Module11HomeScreenState extends State<Module11HomeScreen> {
  TextEditingController cnt = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME SCREEN"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: cnt,
              decoration: InputDecoration(
                  label: Text("Enter Something!"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 1))),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context)=> Module11Screen1(data: cnt.text))
                );
              },
              child: const Text(
                "Go to 2nd Screen",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=> Module11Screen2(data: cnt.text))
                );
              },
              child: const Text(
                "Go to 3rd Screen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
