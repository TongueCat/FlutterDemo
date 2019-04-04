import 'package:flutter/material.dart';
import 'route_first_page.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter route animation",
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
      ),
      home:RouteFirstPage() ,
    );
  }
}
