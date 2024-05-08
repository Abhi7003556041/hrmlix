import 'package:flutter/material.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

// ignore: must_be_immutable
class UpcomingLeaveCard extends StatelessWidget {
  String leaveDate;
  String leaveType;
  String statusValue;
  Color statusColor;

  UpcomingLeaveCard({
    super.key,
    required this.leaveDate,
    required this.leaveType,
    required this.statusValue,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textSemiBold(
                    alignment: TextAlign.left,
                    text: leaveDate.toLowerCase(),
                    color: Theme.of(context).colorScheme.primary,
                    size: 14,
                    maxLine: 2),
                textRegular(
                    alignment: TextAlign.left,
                    color: Theme.of(context).colorScheme.onPrimary,
                    text: leaveType.toString(),
                    size: 12,
                    maxLine: 2)
              ],
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            textRegular(
              alignment: TextAlign.center,
              color: statusColor,
              text: statusValue.toString(),
              size: 12,
            ),
          ],
        )
      ],
    );
  }
}
