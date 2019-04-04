import 'package:flutter/material.dart';
import 'keep_alive_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Keep Alive",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: KeepAlivePage(),
    );
  }
}
