import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  List<Widget> list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    list = new List<Widget>();
    list..add(buildAddButton());
  }

  @override
  Widget build(BuildContext context) {
    //得到屏幕的宽和高
    final wight = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("流式布局"),
      ),
      body: Center(
        //不透明控件
        child: Opacity(
          //透明度
          opacity: 0.8,
          child: Container(
            width: wight,
            height: height / 2,
            color: Colors.grey,
            child: Wrap(
              children: list,
              //设置间距
              spacing: 26.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAddButton() {
    return GestureDetector(
      onTap: () {
        if (list.length < 9) {
          setState(() {
            list.insert(list.length - 1, buildPhoto());
          });
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 80.0,
          height: 80.0,
          color: Colors.black54,
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildPhoto() {
    return Padding(
        padding: const EdgeInsets.all(8.0),

        child: Container(
            width: 80.0,
            height: 80.0,
            color: Colors.black54,
            child: Center(
              child: Text("图片"),
            )));
  }
}
