import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pseb/Screens/Module13/Screens/update_students.dart';

import '../DataBaseHelper.dart';
import '../Model/student_model.dart';

class M13ViewStudents extends StatefulWidget {
  const M13ViewStudents({Key? key}) : super(key: key);

  @override
  State<M13ViewStudents> createState() => _M13ViewStudentsState();
}

class _M13ViewStudentsState extends State<M13ViewStudents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Students List"),
        ),
        body: FutureBuilder<List<Student>>(
          future: DatabaseHelper.instance.getAllStudents(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Student>> snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.data!.isEmpty) {
                return Center(
                  child: Text("No Data Found!"),
                );
              } else {
                List<Student> students = snapshot.data!;
                return Padding(
                  padding: EdgeInsets.all(16),
                  child: ListView.builder(
                    itemCount: students.length,
                    itemBuilder: (context, index) {
                      Student s = students[index];
                      return buildContainer(student: s);
                    },
                  ),
                );
              }
            }
          },
        )

        // Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //
        //     buildContainer(
        //       student: Student(
        //         name: "ATIF WAHEED",
        //         course: "Flutter",
        //         feePaid: 1500,
        //         mobile: "03155437443",
        //         totalFee: 1500,
        //         id: 1,
        //       ),
        //     ),
        //   ],
        // ),
        );
  }

  Widget buildContainer({required Student student}) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 10,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.23,
          // color: Colors.blue,
          decoration: BoxDecoration(
            color: const Color(0xFFFFE082),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFCDD2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        bottom: 15,
                        top: 15,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            student.id.toString(),
                            style: const TextStyle(fontSize: 18),
                          ),
                          Text(
                            student.name.toString(),
                            style: const TextStyle(fontSize: 18),
                          ),
                          Text(
                            student.course.toString(),
                            style: const TextStyle(fontSize: 18),
                          ),
                          Text(
                            student.totalFee.toString(),
                            style: const TextStyle(fontSize: 18),
                          ),
                          Text(
                            student.feePaid.toString(),
                            style: const TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFC8E6C9),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => M13UpdateStudent(
                                        student: student,
                                      )));
                            },
                            child: const Icon(
                              Icons.edit,
                              size: 30,
                            )),
                        InkWell(
                          onTap: () {
                            showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text('Confirmation!!!'),
                                    content:
                                        const Text('Are you sure to delete?'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('No')),
                                      TextButton(
                                          onPressed: () async {
                                            Navigator.of(context).pop();

                                            // delete student

                                            int result = await DatabaseHelper
                                                .instance
                                                .deleteStudent(student.id!);

                                            if (result > 0) {
                                              Fluttertoast.showToast(
                                                  msg: 'RECORD DELETED');
                                              setState(() {});
                                              // build function will be called
                                            }
                                          },
                                          child: const Text('Yes')),
                                    ],
                                  );
                                });
                          },
                          child: const Icon(
                            Icons.delete,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
