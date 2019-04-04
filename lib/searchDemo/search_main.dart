import 'package:flutter/material.dart';
import 'search_page.dart';
void main() =>runApp(MyAPP());

class MyAPP extends StatefulWidget {
  @override
  _MyAPPState createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fluter search",
      home: SearchPage(),
    );
  }
}
