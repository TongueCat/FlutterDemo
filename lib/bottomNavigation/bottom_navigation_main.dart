import 'package:flutter/material.dart';
import 'bottom_navigation_widget.dart';
//底部导航主页面
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter bottomNavigationBar",
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}
