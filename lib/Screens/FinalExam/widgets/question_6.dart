import 'package:flutter/material.dart';

class FinalExamQ6 extends StatefulWidget {
  const FinalExamQ6({Key? key}) : super(key: key);

  @override
  State<FinalExamQ6> createState() => _FinalExamQ6State();
}

class _FinalExamQ6State extends State<FinalExamQ6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 25,
                left: 15,
                right: 15
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF26D44),
                  borderRadius: BorderRadius.circular(15),
                ),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 20,),
                    Image.network(
                        "https://th.bing.com/th/id/R.6025cd217f7bd62c40859c33e3a01c03?rik=7oa83WNGi6fvog&pid=ImgRaw&r=0",
                      width: 80,
                      height: 80,
                    ),
                    const SizedBox(width: 30,),
                    const Text(
                      "Vegetable Pizza",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
