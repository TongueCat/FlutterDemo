import 'package:flutter/material.dart';

class DraggableWight extends StatefulWidget {
  final Offset offset;
  final Color widghtColor;

  const DraggableWight({Key key, this.offset, this.widghtColor})
      : super(key: key);

  @override
  _DraggableWightState createState() => _DraggableWightState();
}

class _DraggableWightState extends State<DraggableWight> {

  Offset _offset = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    _offset = widget.offset;
  }

  @override
  Widget build(BuildContext context) {
    //放置
    return Positioned(
      left: _offset.dx,
      top: _offset.dy,

      child: Draggable(
        data: widget.widghtColor,
        child: Container(
          width: 100.0,
          height: 100.0,
          color: widget.widghtColor,
        ),

        feedback: Container(
          width: 100.0,
          height: 100.0,
          //不透明度
          color: widget.widghtColor.withOpacity(0.5),
        ),

        onDraggableCanceled: (velocity, offset) {
          setState(() {
            this._offset = offset;
          });
        },
      ),
    );
  }
}
