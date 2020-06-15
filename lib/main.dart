import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'AppMain.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.grey
        ),
        primaryColor: Colors.black
      ),
      home: MyHomePage(),
    );
  }
}
