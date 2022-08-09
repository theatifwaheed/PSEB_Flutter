import 'package:flutter/material.dart';

class Module6 extends StatefulWidget {
  const Module6({Key? key}) : super(key: key);

  @override
  State<Module6> createState() => _Module6State();
}

class _Module6State extends State<Module6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR"
        ),
        backgroundColor: Color(0xFF424242),
      ),
      backgroundColor: Color(0xFF303030),
      body: Column(
        children: [
          // Expanded(
          // child:
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 15,
                  right: 15
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          // left: 15,
                          right: 7,
                          // top: 30
                        ),
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF4F0000),
                        ),
                        child: Text(
                          "Top-1",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 7
                        ),
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF4F0000),
                        ),
                        child: Text(
                          "Top-2",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 15,
                right: 15
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF4F0000),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      height: double.infinity,
                      width: double.infinity,
                      child: Text(
                        "Center-1",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                      // width: 150
                    ),
                  )
                ],
              ),
            ),
          ),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 15,
                top: 15
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        // left: 15,
                        right: 7,
                        // top: 30
                      ),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF4F0000),
                      ),
                      child: Text(
                        "Bottom-1",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 7
                      ),
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF4F0000),
                      ),
                      child: Text(
                        "Bottom-2",
                        style: TextStyle(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),

          // ),

        ],
      ),
    );
  }
}
