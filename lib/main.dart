import 'package:flutter/material.dart';
import 'package:ice_man/pages/dashboard.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ice man",
      theme: ThemeData(primarySwatch: Colors.amber),
      home:DashBoard(),
    );
  }
}
