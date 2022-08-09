import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

dynamic retCircleAvatar7({dynamic image}) {
  return CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage(image),
  );
}

dynamic retName7({dynamic name}) {
  return Text(name,
      style: GoogleFonts.zenKurenaido(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30));
}

dynamic retDesignation7({dynamic designation}) {
  return Text(designation,
      style: GoogleFonts.lato(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20));
}

dynamic retCard7({dynamic mText, dynamic mIcon, dynamic context}) {
  return SizedBox(
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

  // Text(designation,
  //   style: GoogleFonts.lato(
  //       color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20));
}
