import 'package:flutter/material.dart';

class Elipse extends StatelessWidget {
  const Elipse({
    super.key,
    required this.color,
    required this.height,
    required this.width,
    this.opacity = 1,
  });

  final Color color;
  final double opacity;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        height: width,
        width: height,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
