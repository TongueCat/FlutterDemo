import 'package:flutter/material.dart';
import 'expation_tile_page.dart';
void main()=>runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter ExpationTile",
      home: ExpationTilePage(),
    );
  }
}
