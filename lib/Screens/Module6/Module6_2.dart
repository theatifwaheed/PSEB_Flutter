import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Module6_2 extends StatefulWidget {
  const Module6_2({Key? key}) : super(key: key);

  @override
  State<Module6_2> createState() => _Module6_2State();
}

class _Module6_2State extends State<Module6_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 120,
            margin: EdgeInsets.only(
              top: 15,
              bottom: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(                 
                children: [
                  for(int i=0; i<11; i++)
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(
                        right: 8,
                        left: 8
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red
                      ),
                      child: Center(
                        child: Text(
                            (i+1).toString(),
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
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
                right: 15
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      for(int i=0; i<11; i++)
                        Container(
                          height: 150,
                          margin: EdgeInsets.only(
                            top: 15
                          ),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Center(
                            child: Text((i+1).toString(),
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
