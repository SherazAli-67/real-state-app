import 'package:flutter/material.dart';

// Clipper for Bottom Arched Image
class BottomArchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double radius = size.width * 0.5;

    path.moveTo(0, size.height);
    path.lineTo(0, radius);
    path.quadraticBezierTo(size.width * 0.5, size.height, size.width, radius);
    path.lineTo(size.width, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}