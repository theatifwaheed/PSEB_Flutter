import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pseb/Screens/Module13/DataBaseHelper.dart';
import 'package:sqflite/sqflite.dart';

import '../Model/student_model.dart';

class M13UpdateStudent extends StatefulWidget {
  Student student;
  M13UpdateStudent({Key? key, required this.student}) : super(key: key);

  @override
  State<M13UpdateStudent> createState() => _M13UpdateStudentState();
}

class _M13UpdateStudentState extends State<M13UpdateStudent> {
  var formKey = GlobalKey<FormState>();
  TextEditingController n1 = TextEditingController(),
      n2 = TextEditingController(),
      n3 = TextEditingController(),
      n4 = TextEditingController(),
      n5 = TextEditingController();
  @override
  void initState() {
    super.initState();
    Student _student = widget.student;
    n1.text = _student.name;
    n2.text = _student.course;
    n3.text = _student.mobile;
    n4.text = _student.totalFee.toString();
    n5.text = _student.feePaid.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Update Student",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 25,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    myField(error: "Name", controller: n1, text: "Name"),
                    const SizedBox(
                      height: 10,
                    ),
                    myField(controller: n2, text: "Course", error: "Course"),
                    const SizedBox(
                      height: 10,
                    ),
                    myField(controller: n3, text: "Mobile", error: "Mobile"),
                    const SizedBox(
                      height: 10,
                    ),
                    myField(
                        controller: n4, text: "Total Fee", error: "Total Fee"),
                    const SizedBox(
                      height: 10,
                    ),
                    myField(controller: n5, text: "Fee Paid", error: "Fee Paid"),
                    const SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: const Text("UPDATE"),
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      String name = n1.text,
                          course = n2.text,
                          mbl = n3.text,
                          tFee = n4.text,
                          fPaid = n5.text;
                      Student newStudent = Student(
                        id: widget.student.id,
                        name: name,
                        course: course,
                        mobile: mbl,
                        totalFee: int.parse(tFee),
                        feePaid: int.parse(fPaid),
                      );
                      int result =
                          await DatabaseHelper.instance.updateStudent(newStudent);
                      if (result > 0) {
                        Fluttertoast.showToast(
                            msg: "Record Saved", backgroundColor: Colors.green);
                      } else {
                        Fluttertoast.showToast(
                            msg: "Record Failed", backgroundColor: Colors.red);
                      }
                    }
                  },
                ),
              ),
            ],
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
