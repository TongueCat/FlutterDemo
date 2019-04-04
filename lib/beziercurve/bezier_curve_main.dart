import 'package:flutter/material.dart';
import 'bezier_curve_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "bezier curve",
      //去掉DeBug图标
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:BezierCurvePage(),
    );
  }
}
