import 'package:flutter/material.dart';
import 'search_bar_delegate.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("查询",
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
            showSearch(context: context, delegate: SearchBarDelegate());
            },
          )
        ],
      ),
    );
  }
}
