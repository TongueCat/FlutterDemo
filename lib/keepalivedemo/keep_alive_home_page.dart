import 'package:flutter/material.dart';

class KeepAliveHomePage extends StatefulWidget {
  @override
  _KeepAliveHomePageState createState() => _KeepAliveHomePageState();
}

//混入AutomaticKeepAliveClientMixin，这是保持状态的关键
//然后重写wantKeppAlive 的值为true。
class _KeepAliveHomePageState extends State<KeepAliveHomePage>
    with AutomaticKeepAliveClientMixin {
  //计数
  int _counter = 0;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  //声明一个内部方法，用来点击按钮后增加数量
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("点击增加"),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.display1,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: "增加",
        child: Icon(Icons.add),
      ),
    );
  }
}
