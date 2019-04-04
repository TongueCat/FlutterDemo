import 'package:flutter/material.dart';
import 'keep_alive_home_page.dart';

class KeepAlivePage extends StatefulWidget {
  @override
  _KeepAlivePageState createState() => _KeepAlivePageState();
}

class _KeepAlivePageState extends State<KeepAlivePage>
    with SingleTickerProviderStateMixin {
  //选项卡控制器
  TabController _controller;

  //初始状态
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  //销毁
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KeepAlivePage"),
        bottom: TabBar(controller: _controller, tabs: [
          Tab(
            icon: Icon(Icons.directions_bike),
          ),
          Tab(
            icon: Icon(Icons.directions_boat),
          ),
          Tab(icon: Icon(Icons.directions_car)),
        ]),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          KeepAliveHomePage(),
          KeepAliveHomePage(),
          KeepAliveHomePage(),
        ],
      ),
    );
  }
}
