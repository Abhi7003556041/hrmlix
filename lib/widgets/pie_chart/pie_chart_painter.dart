import 'dart:math';

import 'package:flutter/material.dart';

class PieChartPainter extends CustomPainter {
  final Map<String, Map<String, dynamic>> dataMap;

  PieChartPainter(this.dataMap);

  @override
  void paint(Canvas canvas, Size size) {
    double total = 0;
    dataMap.forEach((key, value) {
      total += value['value'];
    });

    double startAngle = -pi / 2;

    dataMap.forEach((key, value) {
      double sweepAngle = (value['value'] / total) * 2 * pi;
      drawPieSlice(canvas, size, startAngle, sweepAngle, key, value['color']);
      startAngle += sweepAngle;
    });
  }

  void drawPieSlice(Canvas canvas, Size size, double startAngle,
      double sweepAngle, String key, dynamic colorValue) {
    final Paint paint = Paint()
      ..color = colorValue
      // ..color = getRandomColor()
      ..style = PaintingStyle.fill;

    final Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawArc(rect, startAngle, sweepAngle, true, paint);
  }

  Color getRandomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
