import 'package:flutter/material.dart';
import 'bottom_clipper.dart';
class BezierCurvePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("贝塞尔曲线"),
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper(),
            child: Container(
              color:Colors.deepPurpleAccent,
              height: 200.0,
            ),
          ),

        ],
      ),
    );
  }
}
