import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget widget;

  CustomRoute(this.widget)
      : super(
            //过度时间
            transitionDuration: Duration(seconds: 10),
            //页面构造器
            pageBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) {
              return widget;
            },
            //过度效果
            transitionsBuilder: (BuildContext context,
                Animation<double> animation1,
                Animation<double> animation2,
                Widget child) {
              /*
             //渐隐渐现的动画效果
                          return FadeTransition(
                opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                  parent: animation1,
                  curve: Curves.fastOutSlowIn,
                )),
                child: child,
              );*/

              /* //缩放的动画效果
              return ScaleTransition(
                scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                    parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );*/
/*
              //旋转+缩放动画效果
              return RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                    parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );*/

              //左右滑动动画
              return SlideTransition(
                position: Tween<Offset>(
                        begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                    .animate(CurvedAnimation(
                        parent: animation1, curve: Curves.fastOutSlowIn)),
                child: child,
              );
            });
}
