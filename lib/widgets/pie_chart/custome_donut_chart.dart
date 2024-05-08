//    datamap should be like this  -- -- - --  >
//    dataMap: const {
//                 'PieNameOne': {'color': Colors.green, 'value': 30},
//                 'PieNameTwo': {'color': Colors.red, 'value': 20},
//                 'PieNameThree': {'color': Colors.red, 'value': 50},
//               }

import 'package:flutter/material.dart';
import 'package:hrmlix/widgets/pie_chart/custome_pie_chart.dart';

// ignore: must_be_immutable
class CustomeDoNutChart extends StatelessWidget {
  final Map<String, Map<String, dynamic>> dataMap;
  final double outerCircleSize;
  final double innerCircleSize;
  Color innerCircleColor = Colors.white;

  CustomeDoNutChart(
      {required this.dataMap,
      required this.outerCircleSize,
      required this.innerCircleSize,
      required this.innerCircleColor});

  @override
  Widget build(BuildContext context) {
    return outerCircleSize > innerCircleSize
        ? Center(
            child: Stack(
              children: [
                CustomePieChart(
                  size: outerCircleSize,
                  dataMap: dataMap,
                ),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: innerCircleSize,
                        width: innerCircleSize,
                        decoration: BoxDecoration(
                          color: innerCircleColor,
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        : Center(
            child: Container(),
          );
  }
}
