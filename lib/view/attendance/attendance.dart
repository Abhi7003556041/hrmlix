import 'package:flutter/material.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/view/attendance/widgets/attendance_status.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              vSpace(10),
              InkWell(
                onTap: () {
                  showYearDate(context);
                },
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textSemiBold(
                        color: Theme.of(context).colorScheme.primary,
                        maxLine: 1,
                        size: 14,
                        text: "2023",
                      ),
                      hSpace(5),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Theme.of(context).colorScheme.primary,
                        size: 15,
                      )
                    ]),
              ),
              vSpace(10),
              Container(
                height: 50,
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.onTertiary,
                      width: 1,
                    ),
                    color: grey),
                child: Center(
                  child: textRegular(
                    color: Theme.of(context).colorScheme.primary,
                    maxLine: 1,
                    size: 14,
                    text: "January, 2023",
                  ),
                ),
              ),
              vSpace(3),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onTertiary,
                    width: 1,
                  ),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Center(
                    child: Column(children: [
                  vSpace(5),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                textBold(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    maxLine: 1,
                                    size: 14,
                                    alignment: TextAlign.left,
                                    text: "Thu, 02"),
                                textRegular(
                                    color: hintTextColor,
                                    maxLine: 1,
                                    size: 12,
                                    alignment: TextAlign.left,
                                    text: "Break Shift"),
                              ]),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 18,
                                width: 18,
                                child: Image(
                                    image: AssetImage(AppImage.clockBell)),
                              ),
                              hSpace(5),
                              textSemiBold(
                                color: statusRed,
                                maxLine: 1,
                                size: 12,
                                text: "0:23:34 Late",
                              ),
                            ],
                          )
                        ]),
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.tertiary,
                    thickness: 1,
                  ),
                  vSpace(10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textRegular(
                                color: hintTextColor,
                                maxLine: 1,
                                size: 12,
                                text: "Gross Hours"),
                            textBold(
                              color: Theme.of(context).colorScheme.primary,
                              maxLine: 1,
                              size: 20,
                              text: "10H : 30M",
                            )
                          ]),
                      Container(
                        height: 45,
                        width: 2,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textRegular(
                                color: hintTextColor,
                                maxLine: 1,
                                size: 12,
                                text: "Working Hours"),
                            textBold(
                              color: Theme.of(context).colorScheme.primary,
                              maxLine: 1,
                              size: 20,
                              text: "08H : 30M",
                            )
                          ])
                    ],
                  ),
                  vSpace(10),
                  Divider(
                    color: Theme.of(context).colorScheme.tertiary,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 25,
                              width: 25,
                              child:
                                  Image(image: AssetImage(AppImage.dayCloud)),
                            ),
                            hSpace(10),
                            textBold(
                              color: Theme.of(context).colorScheme.primary,
                              maxLine: 1,
                              size: 14,
                              text: "Day Shift",
                            )
                          ],
                        ),
                        vSpace(20),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AttendanceStatus(
                                status: "IN",
                                statusColor: statusGreen,
                                time: "09:30 AM",
                              ),
                              AttendanceStatus(
                                status: "OUT",
                                statusColor: statusRed,
                                time: "09:30 AM",
                              ),
                              AttendanceStatus(
                                status: "BREAK",
                                statusColor: statusYellow,
                                time: "02 H",
                              ),
                            ])
                      ],
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.tertiary,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 25,
                              width: 25,
                              child:
                                  Image(image: AssetImage(AppImage.nightCloud)),
                            ),
                            hSpace(10),
                            textBold(
                              color: Theme.of(context).colorScheme.primary,
                              maxLine: 1,
                              size: 14,
                              text: "Night Shift",
                            )
                          ],
                        ),
                        vSpace(20),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AttendanceStatus(
                                status: "IN",
                                statusColor: statusGreen,
                                time: "09:30 AM",
                              ),
                              AttendanceStatus(
                                status: "OUT",
                                statusColor: statusRed,
                                time: "09:30 AM",
                              ),
                              AttendanceStatus(
                                status: "BREAK",
                                statusColor: statusYellow,
                                time: "02 H",
                              ),
                            ])
                      ],
                    ),
                  ),
                ])),
              ),
              vSpace(10),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onTertiary,
                    width: 1,
                  ),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Center(
                    child: Column(children: [
                  vSpace(5),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                textBold(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    maxLine: 1,
                                    size: 14,
                                    alignment: TextAlign.left,
                                    text: "Thu, 02"),
                                textRegular(
                                    color: hintTextColor,
                                    maxLine: 1,
                                    size: 12,
                                    alignment: TextAlign.left,
                                    text: "Break Shift"),
                              ]),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 18,
                                width: 18,
                                child: Image(
                                    image: AssetImage(AppImage.runPurple)),
                              ),
                              hSpace(5),
                              textSemiBold(
                                color: statusPurple,
                                maxLine: 1,
                                size: 12,
                                text: "0:21:53 Early Arival",
                              ),
                            ],
                          )
                        ]),
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.tertiary,
                    thickness: 1,
                  ),
                  vSpace(10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textRegular(
                                color: hintTextColor,
                                maxLine: 1,
                                size: 12,
                                text: "Gross Hours"),
                            textBold(
                              color: Theme.of(context).colorScheme.primary,
                              maxLine: 1,
                              size: 20,
                              text: "10H : 30M",
                            )
                          ]),
                      Container(
                        height: 45,
                        width: 2,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textRegular(
                                color: hintTextColor,
                                maxLine: 1,
                                size: 12,
                                text: "Working Hours"),
                            textBold(
                              color: Theme.of(context).colorScheme.primary,
                              maxLine: 1,
                              size: 20,
                              text: "08H : 30M",
                            )
                          ])
                    ],
                  ),
                  vSpace(10),
                  Divider(
                    color: Theme.of(context).colorScheme.tertiary,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AttendanceStatus(
                                status: "IN",
                                statusColor: statusGreen,
                                time: "09:30 AM",
                              ),
                              AttendanceStatus(
                                status: "OUT",
                                statusColor: statusRed,
                                time: "09:30 AM",
                              ),
                              AttendanceStatus(
                                status: "BREAK",
                                statusColor: statusYellow,
                                time: "02 H",
                              ),
                            ])
                      ],
                    ),
                  ),
                ])),
              ),
              vSpace(10),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.onTertiary,
                    width: 1,
                  ),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Center(
                    child: Column(children: [
                  vSpace(5),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                textBold(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    maxLine: 1,
                                    size: 14,
                                    alignment: TextAlign.left,
                                    text: "Sun, 05"),
                              ]),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              textSemiBold(
                                color: statusRed,
                                maxLine: 1,
                                size: 12,
                                text: "Weak Off",
                              ),
                            ],
                          )
                        ]),
                  ),
                ])),
              ),
              vSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
