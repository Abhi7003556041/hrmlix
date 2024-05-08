import 'package:flutter/material.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

// ignore: must_be_immutable
class AttendanceStatus extends StatelessWidget {
  String status;
  String time;
  Color statusColor;
  AttendanceStatus({
    super.key,
    required this.status,
    required this.time,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textSemiBold(
                  color: statusColor,
                  maxLine: 1,
                  size: 12,
                  text: "$status: ".toUpperCase(),
                ),
                textSemiBold(
                  color: statusColor,
                  maxLine: 1,
                  size: 12,
                  text: time.toUpperCase(),
                ),
              ])),
    );
  }
}
