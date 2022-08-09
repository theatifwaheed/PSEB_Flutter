import 'package:flutter/material.dart';

import 'model/doctors.dart';

class Module9Task2 extends StatefulWidget {
  const Module9Task2({Key? key}) : super(key: key);

  @override
  State<Module9Task2> createState() => _Module9Task2State();
}

class _Module9Task2State extends State<Module9Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        title: const Text(
          "Doctors",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
            itemCount: doctors.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 7/11,
              crossAxisSpacing: 10,
              // mainAxisExtent: ,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return myContainer(doctor: doctors[index]);
            }),
      ),
    );
  }

  Widget myContainer({required doctor}) => Container(
        // margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
        // decoration: const BoxDecoration(color: Colors.red),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        imageContainer(image: doctor.image),
        const SizedBox(
          height: 5,
        ),
        Text(
          doctor.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            // fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          doctor.speciality,
          style: const TextStyle(
            color: Colors.black,
            // fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          doctor.address,
          style: const TextStyle(
            color: Colors.black,
            // fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Fee: Rs. ${doctor.fee}",
          style: const TextStyle(
            color: Colors.black,
            // fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    ),
      );

  Widget imageContainer({required String image}) => Container(
    width: 120,
    height: 120,
    margin: const EdgeInsets.only(
        left: 25,
        right: 15
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.red,
        image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fill
        )
    ),
    // child: Image.network(
    //   image,
    //   fit: BoxFit.fill,
    // ),
  );
}
