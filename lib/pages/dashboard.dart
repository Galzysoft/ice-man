import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Home",
        style: TextStyle(
          fontSize: 29,
          fontWeight: FontWeight.bold,
        ),
      )),
      body: Center(child: Text("ada")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("adfa");
        },
        child: Icon(Icons.message_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomSheet: Container(
        height: 200,
        color: Colors.redAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle), label: "Account"),
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), label: "DashBoard"),
        BottomNavigationBarItem(icon: Icon(Icons.add_call), label: "Call")
      ]),
      drawer: Drawer(
          child: Column(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.redAccent,
              ),
              child: Container()),
          Text("ada"),
          Text("ada")
        ],
      )),
    );
  }
}
