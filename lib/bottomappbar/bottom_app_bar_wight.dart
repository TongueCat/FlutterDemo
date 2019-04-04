import 'package:flutter/material.dart';
import 'each_view.dart';

class BottomAppBarWight extends StatefulWidget {
  @override
  _BottomAppBarWightState createState() => _BottomAppBarWightState();
}

class _BottomAppBarWightState extends State<BottomAppBarWight> {
  List<Widget> _eachView;
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _eachView = List();
    _eachView..add(EachView("home"))..add(EachView("pages"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return EachView("New Page");
          }));
        },
        //提示信息
        tooltip: "你好",
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      //浮动动作按钮位置
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //底部工具栏
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        //缺口
        shape: CircularNotchedRectangle(),
        child: Row(
          //主轴对称
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //主轴尺寸
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
              ),
              color: Colors.white,
              onPressed: () {
               setState(() {
                 _index = 0;
               });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.airplay,
              ),
              color: Colors.white,
              onPressed: () {
               setState(() {
                 _index =1;
               });
              },
            ),
          ],
        ),
      ),
    );
  }
}
