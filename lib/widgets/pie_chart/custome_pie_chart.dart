//    datamap should be like this  -- -- - --  >
//    dataMap: const {
//                 'PieNameOne': {'color': Colors.green, 'value': 30},
//                 'PieNameTwo': {'color': Colors.red, 'value': 20},
//                 'PieNameThree': {'color': Colors.red, 'value': 50},
//               }

import 'package:flutter/material.dart';
import 'package:hrmlix/widgets/pie_chart/pie_chart_painter.dart';

class CustomePieChart extends StatelessWidget {
  final Map<String, Map<String, dynamic>> dataMap;
  final double size;

  CustomePieChart({required this.dataMap, required this.size});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: PieChartPainter(dataMap),
    );
  }
}
