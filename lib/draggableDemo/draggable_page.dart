import 'package:flutter/material.dart';
import 'draggable_wight.dart';

class DraggablePage extends StatefulWidget {
  @override
  _DraggablePageState createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  Color _draggableColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DraggablePage"),
      ),
      body: Stack(
        children: <Widget>[
          DraggableWight(
            offset: Offset(80.0, 80.0),
            widghtColor: Colors.tealAccent,
          ),
          DraggableWight(
            offset: Offset(80.0, 80.0),
            widghtColor: Colors.redAccent,
          ),
          Center(
            child: DragTarget(onAccept: (Color color) {
              _draggableColor = color;
            }, builder: (context, cabduaeData, rejectedData) {
              return Container(
                width: 200.0,
                height: 200.0,
                color: _draggableColor,
              );
            }),
          )
        ],
      ),
    );
  }
}
