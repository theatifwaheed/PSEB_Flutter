import 'package:flutter/material.dart';

class Module10Task1 extends StatefulWidget {
  const Module10Task1({Key? key}) : super(key: key);

  @override
  State<Module10Task1> createState() => _Module10Task1State();
}

class _Module10Task1State extends State<Module10Task1> {
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: number1,
                // textInputAction: ,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: "First Number",
                  contentPadding: EdgeInsets.only(
                    left: 20,
                    top: 10,
                    bottom: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: number2,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  hintText: "Second Number",
                  contentPadding: EdgeInsets.only(
                    left: 20,
                    top: 10,
                    bottom: 10,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        calculateAnswer(icon: "+");
                      },
                      child: Container(
                        // margin: EdgeInsets.all(8),
                        // width: double.infinity,
                        height: 55,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        calculateAnswer(icon: "-");
                      },
                      child: Container(
                        // margin: EdgeInsets.all(8),
                        // width: double.infinity,
                        height: 55,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        calculateAnswer(icon: "*");
                      },
                      child: Container(
                        // margin: EdgeInsets.all(8),
                        // width: double.infinity,
                        height: 55,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            "*",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        calculateAnswer(icon: "/");
                      },
                      child: Container(
                        // margin: EdgeInsets.all(8),
                        // width: double.infinity,
                        height: 55,
                        color: Colors.blue,
                        child: const Center(
                          child: Text(
                            "/",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "Result: $result",
                  style: const TextStyle(
                      fontSize: 38,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void calculateAnswer({required icon}) {
    if (number1.text.isNotEmpty && number2.text.isNotEmpty) {
      int n1 = int.parse(number1.text.toString()),
          n2 = int.parse(number2.text.toString());
      switch (icon) {
        case "+":
          result = (n1 + n2).toString();
          break;
        case "-":
          result = (n1 - n2).toString();
          break;
        case "*":
          result = (n1 * n2).toString();
          break;
        case "/":
          result = (n1 / n2).toString();
          break;
      }
      setState((){});
    }
  }
}
