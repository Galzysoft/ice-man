import 'package:flutter/material.dart';
import 'package:ice_man/pages/acount.dart';
import 'package:ice_man/pages/call.dart';
import 'package:ice_man/pages/dashboard.dart';

class NavigationN extends StatefulWidget {
  const NavigationN({Key? key}) : super(key: key);

  @override
  State<NavigationN> createState() => _NavigationNState();
}

class _NavigationNState extends State<NavigationN> {
  int index=0;
  int age=35;
  String question="";
  List<Widget> pages=[DashBoard(),Account(),Call()];

  @override
  Widget build(BuildContext context) {
    question="ada is ${age.isEven}. years old ";
    print("pages is ${pages[2]}");

    return Scaffold(
      appBar: AppBar(
        ),
   body: pages[index],
 
      bottomNavigationBar: BottomNavigationBar(
          onTap:(value) {
            setState(() {
              index=value;
            });
            print("tapped value \$${value } ");
          },
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "DashBoard"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Account"),

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
