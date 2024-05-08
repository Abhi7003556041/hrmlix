import 'package:flutter/material.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

// ignore: must_be_immutable
class LeaveTypeRow extends StatelessWidget {
  String leaveType;
  String leaveUsed;
  String leaveBalance;

  LeaveTypeRow(
      {super.key,
      required this.leaveType,
      required this.leaveUsed,
      required this.leaveBalance});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 10.0, bottom: 10, left: 20, right: 20),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                textSemiBold(
                  color: Theme.of(context).colorScheme.primary,
                  maxLine: 1,
                  size: 14,
                  text: leaveType.toString(),
                ),
              ],
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textRegular(
                          color: Theme.of(context).colorScheme.onPrimary,
                          maxLine: 1,
                          size: 13,
                          text: "Balence",
                        ),
                        vSpace(5),
                        textSemiBold(
                            color: Theme.of(context).colorScheme.primary,
                            maxLine: 1,
                            size: 20,
                            text: leaveBalance.toString()),
                      ]),
                  hSpace(20),
                  Container(
                    height: 40,
                    width: 2,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  hSpace(20),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textRegular(
                          color: Theme.of(context).colorScheme.onPrimary,
                          maxLine: 1,
                          size: 13,
                          text: "Used",
                        ),
                        vSpace(5),
                        textSemiBold(
                          color: Theme.of(context).colorScheme.primary,
                          maxLine: 1,
                          size: 20,
                          text: leaveUsed.toString(),
                        ),
                      ]),
                ]),
          ]),
    );
  }
}
