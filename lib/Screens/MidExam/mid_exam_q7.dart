import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MidExamQuestion7 extends StatelessWidget {
  const MidExamQuestion7({Key? key}) : super(key: key);

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
              child: retCircleAvatar(image: "assets/images/mine.jpg"),
            ),
            retName(name: "TheAtifWaheed"),
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: retDesignation(designation: "Flutter Intern"),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
              child: retCard(
                  context: context, mIcon: Icons.phone, mText: "+923155437443"),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
              child: retCard(
                  context: context,
                  mIcon: Icons.mail,
                  mText: "181319@students.au.edu.pk"),
            ),
            //
          ],
        ),
      ),
    );
  }

  Widget retCircleAvatar({dynamic image}) => CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage(image),
      );
  Widget retName({dynamic name}) => Text(name,
      style: GoogleFonts.zenKurenaido(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30));
  Widget retDesignation({dynamic designation}) => Text(designation,
      style: GoogleFonts.lato(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20));
  Widget retCard({context, mIcon, mText}) => SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 65,
        child: Card(
          color: Colors.white,
          elevation: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Icon(
                  mIcon,
                  color: Color(0xFF009586),
                ),
              ),
              Text(
                mText,
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      );
}
