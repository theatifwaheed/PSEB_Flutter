import 'package:flutter/material.dart';

class Module12Task2 extends StatefulWidget {
  const Module12Task2({Key? key}) : super(key: key);

  @override
  State<Module12Task2> createState() => _Module12Task2State();
}

class _Module12Task2State extends State<Module12Task2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("PSEB Bridge"),
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                icon: Icon(
                  Icons.home,
                ),
                text: "Home",
              ),
              Tab(
                icon: Icon(
                  Icons.ac_unit,
                ),
                text: "Programs",
              ),
              Tab(
                icon: Icon(
                  Icons.phone,
                ),
                text: "Contact Us",
              ),
            ],
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Icon(Icons.camera_alt, size: 80,),),
            Center(child: Text("Home", style: TextStyle(fontSize: 25)),),
            buildProgram(),
            Center(child: Text("Contact Us", style: TextStyle(fontSize: 25),),),
          ],
        ),
      ),
    );
  }
  Widget buildProgram() => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("Pakistan came into being ?", style: TextStyle(fontSize: 20),),
            Icon(Icons.keyboard_arrow_down, size: 30,),
          ],
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.6,
        child: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.laptop),
              title: Text(
                "Computer Science",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.car_repair),
              title: Text(
                "Mechanical Engineering'",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.medical_information),
              title: Text(
                "Medical Sciences",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.coronavirus),
              title: Text(
                'Biological Sciences',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
