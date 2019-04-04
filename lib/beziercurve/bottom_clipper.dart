import 'package:flutter/material.dart';

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 30);
    var firstControlPoint = Offset(size.width * (1 / 4), size.height);
    var firstEndPoint = Offset(size.width/2.25, size.
    height - 30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);


    var secondControlPoint = Offset(size.width * (3 / 4), size.height-80);
    var secondEndPoint = Offset(size.width, size.height - 30);

    path.quadraticBezierTo(
        secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx,
        secondEndPoint.dy);

    path.lineTo(size.width, size.height - 30);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
