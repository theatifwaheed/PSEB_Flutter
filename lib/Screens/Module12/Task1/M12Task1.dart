import 'package:flutter/material.dart';
import 'package:pseb/Screens/Module12/Task1/M12T1Programs.dart';

class M12Task1 extends StatefulWidget {
  const M12Task1({Key? key}) : super(key: key);

  @override
  State<M12Task1> createState() => _M12Task1State();
}

class _M12Task1State extends State<M12Task1> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping App"),
        leading: const Icon(Icons.shopping_cart),
        actions: const [
          Icon(Icons.settings),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 15,
          ),
        ],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Buy More"),
        icon: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.paste_rounded), label: "Programs"),
          BottomNavigationBarItem(icon: Icon(Icons.phone), label: "Contact Us"),
        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
           Center(
            child: const Text("Home"),
          ),
          Module12Task1_Programs(),
          Center(
            child: const Text("Contact Us"),
          ),
        ],
      ),
    );
  }
}
