import 'package:flutter/material.dart';
import 'animation_longing_page.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animation",
      home: AnimationLongingPage (),
    );
  }
}
