import 'package:flutter/material.dart';

import 'model/doctors.dart';

class Module9Task1 extends StatefulWidget {
  const Module9Task1({Key? key}) : super(key: key);

  @override
  State<Module9Task1> createState() => _Module9Task1State();
}

class _Module9Task1State extends State<Module9Task1> {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              // child: myContainer(ListDoctor.doctors[0]),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: doctors.length,
                  itemBuilder: (context, index){
                    return myContainer(doctor: doctors[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myContainer({required Doctor doctor}) => Container(
        height: 150,
        margin: const EdgeInsets.only(
          top: 15, bottom: 8
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageContainer(image: doctor.image),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctor.name,
                  style: const TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Text(
                  doctor.speciality,
                  style: const TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Text(
                  doctor.address,
                  style: const TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Text(
                  "Fee: Rs. ${doctor.fee}",
                  style: const TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ],
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

      // Container(
      //   height: 130,
      //   margin: EdgeInsets.only(left: 20, right: 10),
      //   width: 150,
      //   decoration: BoxDecoration(
      //       // color: Colors.red,
      //       borderRadius: BorderRadius.circular(30),
      //       image:
      //           DecorationImage(image: NetworkImage(image), fit: BoxFit.fill)),
      //   // child: Image.network(
      //   //   image,
      //   // ),
      // );
}
