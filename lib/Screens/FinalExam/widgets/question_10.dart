import 'package:flutter/material.dart';

class FinalExamQ10 extends StatefulWidget {
  const FinalExamQ10({Key? key}) : super(key: key);

  @override
  State<FinalExamQ10> createState() => _FinalExamQ10State();
}

class _FinalExamQ10State extends State<FinalExamQ10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 25,
                right: 25,
                top: 35,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                  width: 4,
                )),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 15,
                    bottom: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Full Name: ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text(
                            "William Anton",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Text(
                            "Email Address: ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          // SizedBox(width: 5,),
                          Icon(
                            Icons.email,
                            size: 18,
                          ),
                          SizedBox(width: 4,),

                          Text(
                            "info@androidatc.com",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Text(
                            "Password: ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 4,),

                          Text(
                            "*********",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Text(
                            "Telephone: ",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 4,),
                          Text(
                            "123456789",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
