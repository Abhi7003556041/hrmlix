import 'package:flutter/material.dart';
import 'package:hrmlix/widgets/common_widgets.dart';
import 'package:hrmlix/widgets/status_card.dart';

// ignore: must_be_immutable
class LeaveCard extends StatelessWidget {
  String leaveDate;
  String leaveType;
  String statusValue;
  Color statusColor;

  LeaveCard({
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
        Expanded(
          child: Row(
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
              StatusCard(
                colorValue: statusColor,
                text: statusValue.toString(),
              ),
            ],
          ),
        ),
        hSpace(10),
        Icon(
          Icons.chevron_right,
          color: Theme.of(context).colorScheme.onPrimary,
          size: 30.0,
        ),
      ],
    );
  }
}
