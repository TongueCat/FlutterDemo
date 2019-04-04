import 'package:flutter/material.dart';

class ToolTipPage extends StatefulWidget {
  @override
  _ToolTipPageState createState() => _ToolTipPageState();
}

class _ToolTipPageState extends State<ToolTipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToolTipPage"),
      ),
      body: Tooltip(
        message: "不要碰我",
        child: Image.network(
          "https://i0.hdslb.com/bfs/archive/16a2fa835f72e3ea60c3c5e2a13ea839cc002156.jpg@880w_440h.jpg",

          scale: 0.8,

        ),
      ),
    );
  }
}
