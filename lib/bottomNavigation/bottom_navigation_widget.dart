import 'package:flutter/material.dart';
import './screen_page/airplay_screen.dart';
import './screen_page/email_screen.dart';
import './screen_page/pages_screen.dart';
import './screen_page/home_screen.dart';

//底部导航
class BottomNavigationWidget extends StatefulWidget {
  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  //按钮颜色
  final _BottomNavigationColor = Colors.blue;

//索引
  int _currentIndex = 0;

  List<Widget> list = List();

  @override
  void initState() {
    // TODO: implement initState-
    super.initState();
    list
      ..add(HomeScreen())
      ..add(PagesScreen())
      ..add(EmailScreen())
      ..add(AirplayScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _BottomNavigationColor,
              ),
              title: Text(
                "home",
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _BottomNavigationColor,
              ),
              title: Text(
                "home",
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _BottomNavigationColor,
              ),
              title: Text(
                "home",
                style: TextStyle(color: _BottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _BottomNavigationColor,
              ),
              title: Text(
                "home",
                style: TextStyle(color: _BottomNavigationColor),
              )),
        ],
        //当前索引
        currentIndex: _currentIndex,
        //点击事件
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
