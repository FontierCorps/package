import 'dart:math';
import 'package:flutter/material.dart';
import 'custom_drawer.dart';

class SecondScreen extends StatelessWidget {
  final double sideA;
  final double sideB;
  final double sideC;

  SecondScreen({required this.sideA, required this.sideB, required this.sideC});

  String getTriangleType() {
    if (sideA == sideB && sideB == sideC) {
      return 'Equilateral';
    } else if (sideA == sideB || sideB == sideC || sideA == sideC) {
      return 'Isosceles';
    } else {
      return 'Scalene';
    }
  }

  List<double> getSortedSides() {
    List<double> sides = [sideA, sideB, sideC];
    sides.sort();
    return sides;
  }

  bool isRightAngleTriangle() {
    List<double> sides = getSortedSides();
    double a = sides[0];
    double b = sides[1];
    double c = sides[2];
    return (pow(a, 2) + pow(b, 2) == pow(c, 2));
  }

  double getPerimeter() {
    return sideA + sideB + sideC;
  }

  double getArea() {
    double s = getPerimeter() / 2;
    return sqrt(s * (s - sideA) * (s - sideB) * (s - sideC));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Triangle Type: ${getTriangleType()}'),
            const SizedBox(
              height: 5,
            ),
            Text('Sorted Sides: ${getSortedSides()}'),
            const SizedBox(
              height: 5,
            ),
            Text(
                'Right-Angle Triangle: ${isRightAngleTriangle() ? 'Yes' : 'No'}'),
            const SizedBox(
              height: 5,
            ),
            Text('Perimeter: ${getPerimeter()}'),
            const SizedBox(
              height: 5,
            ),
            Text('Area: ${getArea()}'),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width / 2,
                    MediaQuery.of(context).size.width / 2),
                painter: TrianglePainter(sideA, sideB, sideC),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            ElevatedButton(
              child: const Text('Go Back'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
