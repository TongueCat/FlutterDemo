import 'package:flutter/material.dart';
import 'expansion_panel_list_page.dart';
void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter ExpansionPanelList",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExpansionPanelListPage(),
    );
  }
}
