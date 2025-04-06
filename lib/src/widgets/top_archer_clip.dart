// Custom Clipper for Arch Shape
import 'package:flutter/material.dart';

// Clipper for Top Arched Image
class TopArchClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double radius = size.width * 0.5;

    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, radius);
    path.quadraticBezierTo(size.width * 0.5, 0, 0, radius);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}