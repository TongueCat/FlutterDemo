import 'package:flutter/material.dart';
import 'custom_route.dart';
class RouteFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        title: Text(
          "RouteFirstPage",
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 4.0,
        backgroundColor:  Colors.lightGreen,
      ),
      body: Center(
        child: MaterialButton(
            child: Icon(
              Icons.navigate_next,
              color: Colors.white,
              size: 64.0,
            ),
            onPressed: () {
              /*Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return RouteSecondPage();
              }));*/
              Navigator.of(context).push(CustomRoute(RouteSecondPage()));
            }),
      ),
    );
  }
}

class RouteSecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text(
          "RouteSecondPage",
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: MaterialButton(
            child: Icon(
              Icons.navigate_before,
              color: Colors.white,
              size: 64.0,
            ),
            onPressed: () {
             Navigator.of(context).pop();
            }),
      ),
    );
  }
}
