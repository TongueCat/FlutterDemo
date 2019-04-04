import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //约束盒子组件，添加额外的约束条件Child上
          ConstrainedBox(
            //约束  扩张
            constraints: const BoxConstraints.expand(),
            child: Image.network(
                "https://i0.hdslb.com/bfs/archive/052d5cc8da9d5f9239e5691a90abb2691ee40410.jpg@880w_440h.jpg"),
          ),
          Center(
            //可裁剪矩形
            child: ClipRect(
              //背景过滤器
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                //不透明
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500.0,
                    height: 700.0,
                    //盒子修饰器
                    decoration: BoxDecoration(color: Colors.grey.shade200),
                    child: Center(
                      child: Text(
                        "毛玻璃效果",
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
