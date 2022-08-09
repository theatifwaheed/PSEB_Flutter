import 'package:flutter/material.dart';

class Module10Task2 extends StatefulWidget {
  const Module10Task2({Key? key}) : super(key: key);

  @override
  State<Module10Task2> createState() => _Module10Task2State();
}

class _Module10Task2State extends State<Module10Task2> {
  TextEditingController n1 = TextEditingController(),
      n2 = TextEditingController(),
      n3 = TextEditingController(),
      n4 = TextEditingController(),
      n5 = TextEditingController();
  var formKey = GlobalKey<FormState>();
  String obtainedMarks = "";
  String percentage = "";
  String grade = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DMC",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      myField(
                          text: "English Marks",
                          controller: n1,
                          error: "English"),
                      const SizedBox(
                        height: 20,
                      ),
                      myField(
                          text: "Physics Marks",
                          controller: n2,
                          error: "Physics"),
                      const SizedBox(
                        height: 20,
                      ),
                      myField(
                          text: "Maths Marks", controller: n3, error: "Maths"),
                      const SizedBox(
                        height: 20,
                      ),
                      myField(
                          text: "Science Marks",
                          controller: n4,
                          error: "Science"),
                      const SizedBox(
                        height: 20,
                      ),
                      myField(
                          text: "Geography Marks",
                          controller: n5,
                          error: "Geography"),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          n1.text = "";
                          n2.text = "";
                          n3.text = "";
                          n4.text = "";
                          n5.text = "";
                        },
                        child: const Text("Clear"),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          obtainedMarks = (int.parse(n1.text) +
                                  int.parse(n2.text) +
                                  int.parse(n3.text) +
                                  int.parse(n4.text) +
                                  int.parse(n5.text))
                              .toString();
                          percentage = ((int.parse(obtainedMarks) / 500) * 100)
                              .toString();
                          (double.parse(percentage) >= 80)
                              ? grade = "A"
                              : (double.parse(percentage) >= 60 &&
                                      (double.parse(percentage) <= 80))
                                  ? grade = "B"
                                  : (double.parse(percentage) >= 40 &&
                                          (double.parse(percentage) <= 80))
                                      ? grade = "C"
                                      : grade = "F";
                          setState(() {});
                        },
                        child: const Text("Calculate"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Obtained Marks: $obtainedMarks",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Percentage: $percentage",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Grade: $grade",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myField({required controller, required text, required error}) =>
      TextFormField(
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          hintText: text,
          label: Text(text),
        ),
        controller: controller,
        validator: (String? txt) {
          if (txt == null || txt.isEmpty) {
            return "Please Provide $error Marks!";
          }
          return null;
        },
      );
}
