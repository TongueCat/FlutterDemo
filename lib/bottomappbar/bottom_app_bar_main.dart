import 'package:flutter/material.dart';
import 'bottom_app_bar_wight.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter BottomAppBar",
      //自定义主题样本
      theme: ThemeData(
        primaryColor: Colors.lightBlue
      ),
      home: BottomAppBarWight(),
    );
  }
}

