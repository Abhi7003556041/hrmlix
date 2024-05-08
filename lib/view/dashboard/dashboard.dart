import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/view/dashboard/widget/UnicornOutlineButton.dart';
import 'package:hrmlix/widgets/common_widgets.dart';
import 'package:hrmlix/widgets/large_text_manage.dart';
import 'package:hrmlix/widgets/user_card.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: fullHeight(context) * 0.08,
                  width: fullWidth(context),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                Container(
                  height: fullHeight(context) * 0.11,
                  width: fullWidth(context) * 0.9,
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
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
                  child: InkWell(
                    onTap: () {
                      print("Gelo");
                    },
                    child: UnicornOutlineButton(
                      strokeWidth: 2,
                      radius: 12,
                      gradient: LinearGradient(
                        colors: [
                          statusYellow,
                          white,
                          statusYellow,
                        ],
                        // begin: Alignment.topCenter,
                        // end: Alignment.bottomCenter,
                      ),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed("/clockInCard");
                        },
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              hSpace(5),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textSemiBold(
                                      color: statusGreen,
                                      maxLine: 1,
                                      size: 14,
                                      text: "Current Time",
                                    ),
                                    vSpace(5),
                                    textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      text: "06:30:02",
                                    ),
                                  ]),
                              hSpace(20),
                              Container(
                                height: 45,
                                width: 2,
                                color: borderColor,
                              ),
                              hSpace(20),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textSemiBold(
                                      color: statusYellow,
                                      maxLine: 1,
                                      size: 14,
                                      text: "Effective Hours",
                                    ),
                                    vSpace(5),
                                    textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      text: "02:40:00",
                                    ),
                                  ]),
                              hSpace(40),
                              const SizedBox(
                                height: 24,
                                width: 24,
                                child: Center(
                                    child: Image(
                                        image:
                                            AssetImage(AppImage.downGreyIcon))),
                              ),
                            ]),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            Container(
              // margin: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
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
                    vSpace(15),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
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
                                  text: "Announcement"),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              textSemiBold(
                                color: textBlue,
                                maxLine: 1,
                                size: 14,
                                text: "View",
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
                          )
                        ]),
                    vSpace(10),
                    Divider(
                      color: Theme.of(context).colorScheme.tertiary,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textBold(
                                color: Theme.of(context).colorScheme.primary,
                                maxLine: 1,
                                size: 14,
                                text: "Biometric Attendance Guidelines"),
                            vSpace(15),
                            LargeTextHandle(
                              text:
                                  "Hi All,   Please be informed that it is mandatory to get your fingerprint impression scanned through biometric machine. Kindly go through the below mentioned guidelines of putting your attendance through Biometric system: 1. You are required to do finger Punch for check in & check out, wherein your first finger Punch would be considered as your Check In time & last finger punch would be as your Check Out time. 2. While going for any sort of breaks, it is compulsory to scan your fingerprint. 3. In case you are unable to punch in or out because of biometric malfunction or any other reason, then it is his/her responsibility to immediately inform the HRD.",
                            ),
                          ]),
                    ),
                    vSpace(5),
                  ])),
            ),

            //// Upcoming Leave Activity

            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
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
                    vSpace(15),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                                  text: "Leave Activity"),
                            ],
                          ),
                        ]),
                    vSpace(10),
                    Divider(
                      color: Theme.of(context).colorScheme.tertiary,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          maxLine: 1,
                                          size: 20,
                                          text: "13",
                                        ),
                                        vSpace(5),
                                        textSemiBold(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          maxLine: 1,
                                          size: 14,
                                          text: "Balence",
                                        ),
                                      ]),
                                  hSpace(20),
                                  Container(
                                    height: 35,
                                    width: 2,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                  hSpace(20),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        textSemiBold(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          maxLine: 1,
                                          size: 20,
                                          text: "04",
                                        ),
                                        vSpace(5),
                                        textSemiBold(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          maxLine: 1,
                                          size: 14,
                                          text: "Used",
                                        ),
                                      ]),
                                  hSpace(20),
                                  Container(
                                    height: 35,
                                    width: 2,
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                  ),
                                  hSpace(20),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        textSemiBold(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          maxLine: 1,
                                          size: 20,
                                          text: "08 ",
                                        ),
                                        vSpace(5),
                                        textSemiBold(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          maxLine: 1,
                                          size: 14,
                                          text: "Remain",
                                        ),
                                      ]),
                                ]),
                            vSpace(30),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Get.toNamed("/applyLeave");
                                  },
                                  child: textRegular(
                                    color: textBlue,
                                    maxLine: 1,
                                    size: 12,
                                    text: "Request Leave",
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.toNamed("/leaveHistory");
                                  },
                                  child: textRegular(
                                    color: textBlue,
                                    maxLine: 1,
                                    size: 12,
                                    text: "View All Leave Activity",
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ])),
            ),

            //// Upcoming Birthday section
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
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
                    vSpace(15),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                                  text: "Upcoming Birthday"),
                            ],
                          ),
                        ]),
                    vSpace(10),
                    Divider(
                      color: Theme.of(context).colorScheme.tertiary,
                      thickness: 1,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 20.0,
                                      top: 10,
                                      bottom: 10),
                                  child: index < 2
                                      ? UserCard(
                                          designation: "Developer",
                                          name: "Ms. Dale Waelchi",
                                          profileImgUrl: "",
                                          statusColor: statusGreen,
                                          statusValue: "Today",
                                        )
                                      : UserCard(
                                          designation: "Web Designer  ",
                                          name: "Andrew Nicolas",
                                          profileImgUrl: "",
                                          statusColor: statusRed,
                                          statusValue: "Tomorrow",
                                        ),
                                );
                              }),
                        ]),
                    vSpace(10),
                  ])),
            ),

            //// Employee On Leave section
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
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
                    vSpace(15),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                                  text: "Employee On Leave"),
                            ],
                          ),
                        ]),
                    vSpace(10),
                    Divider(
                      color: Theme.of(context).colorScheme.tertiary,
                      thickness: 1,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 20.0,
                                      top: 10,
                                      bottom: 10),
                                  child: index < 2
                                      ? UserCard(
                                          designation: "Developer",
                                          name: "Ms. Dale Waelchi",
                                          profileImgUrl: "",
                                          statusColor: statusGreen,
                                          statusValue: "Today",
                                        )
                                      : UserCard(
                                          designation: "Web Designer  ",
                                          name: "Andrew Nicolas",
                                          profileImgUrl: "",
                                          statusColor: statusRed,
                                          statusValue: "Tomorrow",
                                        ),
                                );
                              }),
                        ]),
                    vSpace(10),
                  ])),
            ),

            //// Work Anniversary section
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
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
                    vSpace(15),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                                  text: "Work Anniversary"),
                            ],
                          ),
                        ]),
                    vSpace(10),
                    Divider(
                      color: Theme.of(context).colorScheme.tertiary,
                      thickness: 1,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 20.0,
                                      top: 10,
                                      bottom: 10),
                                  child: index < 2
                                      ? UserCard(
                                          designation: "Developer",
                                          name: "Ms. Dale Waelchi",
                                          profileImgUrl: "",
                                          statusColor: statusGreen,
                                          statusValue: "Today",
                                        )
                                      : UserCard(
                                          designation: "Web Designer  ",
                                          name: "Andrew Nicolas",
                                          profileImgUrl: "",
                                          statusColor: statusRed,
                                          statusValue: "Tomorrow",
                                        ),
                                );
                              }),
                        ]),
                    vSpace(10),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
