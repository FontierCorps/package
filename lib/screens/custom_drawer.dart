import 'dart:math';

import 'package:flutter/material.dart';

class TrianglePainter extends CustomPainter {
  final double sideA;
  final double sideB;
  final double sideC;

  TrianglePainter(this.sideA, this.sideB, this.sideC);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    if (sideA > 0 && sideB > 0 && sideC > 0) {
      double x1 = 0;
      double y1 = size.height;

      double x2 = sideC;
      double y2 = size.height;

      double x3 = (sideA * sideA + sideC * sideC - sideB * sideB) / (2 * sideC);
      double y3 = size.height - sqrt(sideA * sideA - x3 * x3);

      Path path = Path();
      path.moveTo(x1, y1);
      path.lineTo(x2, y2);
      path.lineTo(x3, y3);
      path.close();

      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
