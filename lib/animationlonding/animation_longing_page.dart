import 'package:flutter/material.dart';
import 'my_home_page.dart';

class AnimationLongingPage extends StatefulWidget {
  @override
  _AnimationLongingPageState createState() => _AnimationLongingPageState();
}

class _AnimationLongingPageState extends State<AnimationLongingPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    /*动画事件监听器，
    它可以监听到动画的执行状态，
    我们这里只监听动画是否结束，
    如果结束则执行页面跳转动作。 */
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return MyHomePage();
        }), (route) {
          return route == null;
        });
      }
    });
    //播放动画
    _animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    //动画销毁
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //透明度动画组件
    return FadeTransition(
//执行动画
      opacity: _animation,
      child: Image.network(
        "https://i0.hdslb.com/bfs/archive/1fc1a263fb7012d8d52ef69731cc0822d128a7da.jpg@880w_440h.jpg",
        //进行缩放
        scale: 2.0,
        // 充满父容器
        fit: BoxFit.cover,
      ),
    );
  }
}
