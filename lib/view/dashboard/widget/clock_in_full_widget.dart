import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/view/dashboard/widget/UnicornOutlineButton.dart';
import 'package:hrmlix/widgets/common_widgets.dart';
import 'package:hrmlix/widgets/profile_avatar.dart';
import 'package:hrmlix/widgets/user_card.dart';

class ClockInFullWidget extends StatefulWidget {
  const ClockInFullWidget({super.key});

  @override
  State<ClockInFullWidget> createState() => _ClockInFullWidgetState();
}

class _ClockInFullWidgetState extends State<ClockInFullWidget> {
  var showEdit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.onTertiary,
                      width: 1,
                    ),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: Center(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                vSpace(30),
                                const SizedBox(
                                    height: 65,
                                    width: 65,
                                    child: ProfileAvatar(profileImg: "")),
                                vSpace(10),
                                textBold(
                                  color: Theme.of(context).colorScheme.primary,
                                  maxLine: 1,
                                  size: 14,
                                  alignment: TextAlign.center,
                                  text: "Moniruddin Laskar",
                                ),
                                vSpace(5),
                                textRegular(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    maxLine: 1,
                                    size: 12,
                                    text: "UI/UX Designer"),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 25,
                                      width: 15,
                                      child: Image(
                                          image:
                                              AssetImage(AppImage.clockBell)),
                                    ),
                                    hSpace(5),
                                    textBold(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        maxLine: 1,
                                        size: 12,
                                        alignment: TextAlign.left,
                                        text: "Shift:"),
                                    textSemiBold(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onPrimary,
                                        maxLine: 1,
                                        size: 12,
                                        alignment: TextAlign.left,
                                        text: "Break Shift"),
                                  ],
                                ),
                                vSpace(5),
                              ],
                            ),
                            Positioned(
                              top: 10,
                              right: 10,
                              child: GestureDetector(
                                onTap: () {
                                  Get.back();
                                },
                                child: Icon(
                                  Icons.clear,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 35,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 80,
                              margin: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: statusYellow,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                  color: statusYellow.withOpacity(0.15)),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: UserCard(
                                  name: 'Mr Mondal',
                                  designation: "Developer",
                                  profileImgUrl: "",
                                  statusColor: Colors.white,
                                  statusValue: "",
                                ),
                              ),
                            ),
                            Positioned(
                              left: 45,
                              top: 11,
                              child: Container(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(0.6),
                                child: textRegular(
                                  maxLine: 1,
                                  size: 12,
                                  text: "Reporting Head",
                                  color: statusYellow,
                                  alignment: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                        Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1,
                        ),
                        vSpace(10),
                        Row(
                          children: [
                            const SizedBox(
                              height: 22,
                              width: 8,
                              child: Image(
                                  image:
                                      AssetImage(AppImage.rectangleBlueLine)),
                            ),
                            hSpace(15),
                            textBold(
                                color: Theme.of(context).colorScheme.primary,
                                maxLine: 1,
                                size: 16,
                                alignment: TextAlign.left,
                                text: "Your Timing"),
                          ],
                        ),
                        vSpace(10),
                        Container(
                          height: fullHeight(context) * 0.15,
                          width: fullWidth(context) * 0.9,
                          margin: const EdgeInsets.only(
                              left: 20, right: 20, top: 15, bottom: 15),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.all(Radius.circular(0)),
                            boxShadow: [
                              //BoxShadow
                              BoxShadow(
                                color: white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: UnicornOutlineButton(
                            strokeWidth: 2,
                            radius: 3,
                            gradient: LinearGradient(
                              colors: [
                                statusYellow,
                                white,
                                statusYellow,
                              ],
                              // begin: Alignment.topCenter,
                              // end: Alignment.bottomCenter,
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  hSpace(5),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        textSemiBold(
                                          color: statusGreen,
                                          maxLine: 1,
                                          size: 14,
                                          text: "Current Time",
                                        ),
                                        vSpace(5),
                                        textSemiBold(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          maxLine: 1,
                                          size: 16,
                                          text: "06:30:02",
                                        ),
                                      ]),
                                  hSpace(20),
                                  Container(
                                    height: 45,
                                    width: 2,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onTertiary,
                                  ),
                                  hSpace(20),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        textSemiBold(
                                          color: statusYellow,
                                          maxLine: 1,
                                          size: 14,
                                          text: "Effective Hours",
                                        ),
                                        vSpace(5),
                                        textSemiBold(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          maxLine: 1,
                                          size: 16,
                                          text: "02:40:00",
                                        ),
                                      ]),
                                  hSpace(5),
                                ]),
                            onPressed: () {},
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print("gps");
                          },
                          child: Container(
                            height: 50,
                            margin: const EdgeInsets.only(
                                bottom: 5, top: 5, left: 20, right: 20),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5,
                                    style: BorderStyle.solid,
                                    color: textBlue),
                                borderRadius: BorderRadius.circular(5),
                                color: textBlue.withOpacity(0.2)),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 5),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    textBold(
                                        color: textBlue,
                                        maxLine: 1,
                                        size: 14,
                                        text: "GPS Login"),
                                    Icon(
                                      Icons.expand_more,
                                      color: textBlue,
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          margin: const EdgeInsets.only(
                              bottom: 5, top: 5, left: 20, right: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: green),
                          child: Center(
                            child: textRegular(
                                color: white,
                                maxLine: 1,
                                size: 12,
                                text: "Clock IN"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 5, top: 10, left: 20, right: 20),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image(
                                        image: AssetImage(AppImage.dayCloud)),
                                  ),
                                  hSpace(15),
                                  textBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "Day Shift"),
                                ],
                              ),
                              vSpace(10),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "Clock IN",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "06:30:02 AM",
                                          ),
                                        ]),
                                    hSpace(20),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                    ),
                                    hSpace(20),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "Clock OUT",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "00:00:02 AM",
                                          ),
                                        ]),
                                    hSpace(20),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                    ),
                                    hSpace(20),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "Break Hours",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "00:20:00",
                                          ),
                                        ]),
                                  ]),
                              vSpace(10),
                              Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 1,
                              ),
                              vSpace(10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image(
                                        image: AssetImage(AppImage.nightCloud)),
                                  ),
                                  hSpace(15),
                                  textBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "Night Shift"),
                                ],
                              ),
                              vSpace(10),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "Clock IN",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "06:30:02 AM",
                                          ),
                                        ]),
                                    hSpace(20),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                    ),
                                    hSpace(20),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "Clock OUT",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "00:00:02 AM",
                                          ),
                                        ]),
                                    hSpace(20),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                    ),
                                    hSpace(20),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "Break Hours",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "00:20:00",
                                          ),
                                        ]),
                                  ]),
                              vSpace(20),
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: statusRed.withOpacity(0.2)),
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      hSpace(20),
                                      const SizedBox(
                                        height: 15,
                                        width: 15,
                                        child: Image(
                                            image:
                                                AssetImage(AppImage.clockBell)),
                                      ),
                                      hSpace(10),
                                      textRegular(
                                          color: statusRed,
                                          maxLine: 1,
                                          size: 12,
                                          alignment: TextAlign.left,
                                          text: "0:21:53 Late"),
                                    ],
                                  ),
                                ),
                              ),
                              vSpace(15),
                              Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: textBlue.withOpacity(0.2)),
                                child: Center(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      hSpace(20),
                                      const SizedBox(
                                        height: 15,
                                        width: 15,
                                        child: Image(
                                            image: AssetImage(
                                          AppImage.runPurple,
                                        )),
                                      ),
                                      hSpace(10),
                                      textRegular(
                                          color: textBlue,
                                          maxLine: 1,
                                          size: 12,
                                          alignment: TextAlign.left,
                                          text: "0:21:53 Early Arival"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        vSpace(10),
                        Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1,
                        ),
                        vSpace(10),
                        Row(
                          children: [
                            const SizedBox(
                              height: 22,
                              width: 8,
                              child: Image(
                                  image:
                                      AssetImage(AppImage.rectangleBlueLine)),
                            ),
                            hSpace(15),
                            textBold(
                                color: Theme.of(context).colorScheme.primary,
                                maxLine: 1,
                                size: 16,
                                alignment: TextAlign.left,
                                text: "Your Timing"),
                          ],
                        ),
                        vSpace(10),
                        Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              bottom: 5, top: 10, left: 20, right: 20),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                    width: 30,
                                    child: Image(
                                        image: AssetImage(AppImage.dayCloud)),
                                  ),
                                  hSpace(15),
                                  textBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "Day Shift"),
                                ],
                              ),
                              vSpace(10),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "Clock IN",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "06:30:02 AM",
                                          ),
                                        ]),
                                    hSpace(20),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                    ),
                                    hSpace(20),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "Clock OUT",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "00:00:02 AM",
                                          ),
                                        ]),
                                    hSpace(20),
                                    Container(
                                      height: 40,
                                      width: 2,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary,
                                    ),
                                    hSpace(20),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "Break Hours",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "00:20:00",
                                          ),
                                        ]),
                                  ]),
                              vSpace(10),
                            ],
                          ),
                        ),
                        Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              textSemiBold(
                                color: textBlue,
                                maxLine: 1,
                                size: 14,
                                text: "View Attendance Summary",
                              ),
                              hSpace(8),
                              const SizedBox(
                                height: 10,
                                width: 10,
                                child: Image(
                                    image: AssetImage(AppImage.triangleBlue),
                                    fit: BoxFit.contain),
                              ),
                              hSpace(15),
                            ],
                          ),
                        )
                      ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
