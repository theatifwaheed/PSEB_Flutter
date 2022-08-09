import 'package:flutter/material.dart';

class Module12Task1_Programs extends StatefulWidget {
  const Module12Task1_Programs({Key? key}) : super(key: key);

  @override
  State<Module12Task1_Programs> createState() => _Module12Task1_ProgramsState();
}

class _Module12Task1_ProgramsState extends State<Module12Task1_Programs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.laptop),
            title: Text(
              "Computer Science",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.car_repair),
            title: Text(
              "Mechanical Engineering'",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.medical_information),
            title: Text(
              "Medical Sciences",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.coronavirus),
            title: Text(
              'Biological Sciences',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
