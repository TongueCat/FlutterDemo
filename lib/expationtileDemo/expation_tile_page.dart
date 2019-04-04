import 'package:flutter/material.dart';

class ExpationTilePage extends StatefulWidget {
  @override
  _ExpationTilePageState createState() => _ExpationTilePageState();
}

class _ExpationTilePageState extends State<ExpationTilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("展开闭合控件"),
        
      ),
      body: ExpansionTile(title: Text("Expansion Tile"),
      leading: Icon(Icons.ac_unit),
      backgroundColor: Colors.white12,
      children: <Widget>[
        ListTile(
          title: Text("List tile"),
          subtitle: Text("subtitle"),
        )
      ],
      //是否展开  默认false
      initiallyExpanded: true
        ,),
    );
  }
}
