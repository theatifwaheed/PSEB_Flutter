import 'package:flutter/material.dart';

import 'Widgets/module7_widgets.dart';

class Module7Screen extends StatefulWidget {
  const Module7Screen({Key? key}) : super(key: key);

  @override
  State<Module7Screen> createState() => _Module7ScreenState();
}

class _Module7ScreenState extends State<Module7Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF009688),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(),
              child: retCircleAvatar7(image: "assets/images/mine.jpg"),
            ),
            retName7(name: "TheAtifWaheed"),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: retDesignation7(designation: "Flutter Intern"),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: retCard7(
                  context: context, mIcon: Icons.phone, mText: "+923155437443"),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: 20,
                left: 20,
                bottom: 10
              ),
              child: retCard7(
                  context: context, mIcon: Icons.mail, mText: "181319@students.au.edu.pk"),
            ),
            //

          ],
        ),
      ),
    );
  }
}
