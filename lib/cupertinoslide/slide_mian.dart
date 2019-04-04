import 'package:flutter/material.dart';
import 'right_slide_back_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "slide",
        theme:ThemeData(primarySwatch: Colors.blue),
      home: RightSlideBackPage(),
    );
  }
}
