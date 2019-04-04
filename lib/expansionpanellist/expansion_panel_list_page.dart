import 'package:flutter/material.dart';
import 'ExpandStateBean.dart';

class ExpansionPanelListPage extends StatefulWidget {
  @override
  _ExpansionPanelListPageState createState() => _ExpansionPanelListPageState();
}

class _ExpansionPanelListPageState extends State<ExpansionPanelListPage> {
  var _currentPanlIndex = -1;

  //组成一个int类型数组，用来控制索引
  List<int> mList;

  //展开闭合的状态列表， ExpandStateBean是自定义的类
  List<ExpandStateBean> exList;

//构造方法，调用这个类的时候自动执行
  _ExpansionPanelListPageState() {
    mList = new List();
    exList = new List();
    //便利为两个List进行赋值
    for (int i = 0; i < 10; i++) {
      mList.add(i);
      exList.add(ExpandStateBean(i,false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ExpansionPanelList"),
      ),
      //加入可滚动组件
      body: SingleChildScrollView(
          child: ExpansionPanelList(
            //交互回调属性,里面是个匿名函数
            expansionCallback: (index,isExpanded) {
              _setCurrenIndex(index,isExpanded);
            },
            children: mList.map((index) {
              return ExpansionPanel(
                headerBuilder: (context,isExpanded) {
                  return ListTile(
                    title: Text("This is NO. $index"),
                  );
                },
                body: ListTile(
                  title: Text("Expansion no. $index"),
                ),
                isExpanded: exList[index].isOpen,
              );
            }).toList(),
          ),
      ),
    );
  }



//修改展开与闭合的内部方法
  _setCurrenIndex(index,isExpand) {
    setState(() {
      //遍历可展开状态列表
      exList.forEach((item) {
        if (item.index == index) {
          //取反，
          item.isOpen = ! isExpand;
        }
      });
    });
  }
}
