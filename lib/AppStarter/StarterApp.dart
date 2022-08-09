import 'package:flutter/material.dart';
import 'package:pseb/Screens/Module13/Screens/add_students.dart';

class StarterApp extends StatelessWidget {
  const StarterApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PSEB Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Module6_2(),
      home: const M13AddStudents(),
    );
  }
}