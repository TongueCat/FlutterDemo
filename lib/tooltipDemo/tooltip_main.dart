import 'package:flutter/material.dart';
import 'tool_tip_page.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "tooltip",
      theme:ThemeData.light(),
      home: ToolTipPage(),
    );
  }
}
