import 'package:flutter/material.dart';

import '../../Module9/model/doctors.dart';

class DoctorDetailsScreenM11T2 extends StatefulWidget {
  dynamic doctor;
  DoctorDetailsScreenM11T2({Key? key, required this.doctor}) : super(key: key);

  @override
  State<DoctorDetailsScreenM11T2> createState() =>
      _DoctorDetailsScreenM11T2State();
}

class _DoctorDetailsScreenM11T2State extends State<DoctorDetailsScreenM11T2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Details"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 15,
          ),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.doctor.image),
              radius: 80,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            widget.doctor.name,
            style: const TextStyle(
              color: Colors.black,
              // fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            widget.doctor.speciality,
            style: const TextStyle(
              color: Colors.black,
              // fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            widget.doctor.address,
            style: const TextStyle(
              color: Colors.black,
              // fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Fee: Rs. ${widget.doctor.fee}",
            style: const TextStyle(
              color: Colors.black,
              // fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
