import 'package:flutter/material.dart';
import 'frosted_glass_demo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter Frosted",
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: FrostedGlassDemo(),
    );
  }
}
