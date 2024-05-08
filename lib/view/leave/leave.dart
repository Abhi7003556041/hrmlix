import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/view/leave/widget/leave_type_row.dart';
import 'package:hrmlix/view/leave/widget/upcoming_leave_card.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class Leave extends StatefulWidget {
  const Leave({super.key});

  @override
  State<Leave> createState() => _LeaveState();
}

class _LeaveState extends State<Leave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: appBackgroundColor,
      body: SizedBox(
        height: fullHeight(context),
        child: Column(
          children: [
            // for devider below navbar
            Container(
              height: 2,
              width: fullWidth(context),
              color: Theme.of(context).colorScheme.onTertiary,
            ),
            // main section column
            Expanded(
              child: Stack(children: [
                Container(
                  height: fullHeight(context) * 0.15,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                Positioned.fill(
                  child: Column(
                    children: [
                      Container(
                        height: fullHeight(context) * 0.09,
                        color: Colors.transparent,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 10, bottom: 10),
                            child: Column(
                              children: [
                                //// Leave Activity

                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onTertiary,
                                      width: 1,
                                    ),
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                  child: Center(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20.0,
                                              bottom: 20,
                                              left: 5,
                                              right: 5),
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      hSpace(25),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            textSemiBold(
                                                              color:
                                                                  statusGreen,
                                                              maxLine: 1,
                                                              size: 22,
                                                              text: "12",
                                                            ),
                                                            vSpace(5),
                                                            textRegular(
                                                              color:
                                                                  statusGreen,
                                                              maxLine: 1,
                                                              size: 13,
                                                              text: "Balence",
                                                            ),
                                                          ]),
                                                      hSpace(20),
                                                      Container(
                                                        height: 40,
                                                        width: 2,
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .onTertiary,
                                                      ),
                                                      hSpace(20),
                                                      Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            textSemiBold(
                                                              color:
                                                                  statusYellow,
                                                              maxLine: 1,
                                                              size: 20,
                                                              text: "04",
                                                            ),
                                                            vSpace(5),
                                                            textSemiBold(
                                                              color:
                                                                  statusYellow,
                                                              maxLine: 1,
                                                              size: 13,
                                                              text: "Used",
                                                            ),
                                                          ]),
                                                    ]),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Get.toNamed(
                                                            "/leaveHistory");
                                                      },
                                                      child: textSemiBold(
                                                        color: textBlue,
                                                        maxLine: 1,
                                                        size: 14,
                                                        text:
                                                            "View Leave History",
                                                      ),
                                                    ),
                                                    hSpace(8),
                                                    const SizedBox(
                                                      height: 10,
                                                      width: 10,
                                                      child: Image(
                                                          image: AssetImage(
                                                              AppImage
                                                                  .triangleBlue),
                                                          fit: BoxFit.contain),
                                                    ),
                                                    hSpace(5),
                                                  ],
                                                )
                                              ]),
                                        ),
                                      ])),
                                ),

                                //// Leave type section

                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onTertiary,
                                      width: 1,
                                    ),
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                  child: Center(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                        vSpace(5),
                                        LeaveTypeRow(
                                          leaveBalance: "13",
                                          leaveType: "Casual Leave",
                                          leaveUsed: "05",
                                        ),
                                        Divider(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onTertiary,
                                          thickness: 1,
                                        ),
                                        LeaveTypeRow(
                                          leaveBalance: "13",
                                          leaveType: "Medical Leave (ML)",
                                          leaveUsed: "05",
                                        ),
                                        Divider(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onTertiary,
                                          thickness: 1,
                                        ),
                                        LeaveTypeRow(
                                          leaveBalance: "13",
                                          leaveType: "Sick Leave (SL)",
                                          leaveUsed: "05",
                                        ),
                                        Divider(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onTertiary,
                                          thickness: 1,
                                        ),
                                        LeaveTypeRow(
                                          leaveBalance: "13",
                                          leaveType: "Paid Leave (PL)",
                                          leaveUsed: "05",
                                        ),
                                        vSpace(5)
                                      ])),
                                ),

                                //// Your Upcoming Leave section
                                Container(
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onTertiary,
                                      width: 1,
                                    ),
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                  child: Center(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                        vSpace(15),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  const SizedBox(
                                                    height: 22,
                                                    width: 8,
                                                    child: Image(
                                                        image: AssetImage(AppImage
                                                            .rectangleBlueLine)),
                                                  ),
                                                  hSpace(15),
                                                  textBold(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primary,
                                                      maxLine: 1,
                                                      size: 16,
                                                      alignment: TextAlign.left,
                                                      text:
                                                          "Your Upcoming Leave"),
                                                ],
                                              ),
                                            ]),
                                        vSpace(10),
                                        Divider(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onTertiary,
                                          thickness: 1,
                                        ),
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              ListView.builder(
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  itemCount: 3,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20.0,
                                                              right: 20.0,
                                                              top: 10,
                                                              bottom: 10),
                                                      child: index < 1
                                                          ? UpcomingLeaveCard(
                                                              leaveDate:
                                                                  "Jan 25, 2024",
                                                              leaveType:
                                                                  "Paid Leave",
                                                              statusColor:
                                                                  statusGreen,
                                                              statusValue:
                                                                  "Approved",
                                                            )
                                                          : UpcomingLeaveCard(
                                                              leaveDate:
                                                                  "Jun 10, 2024",
                                                              leaveType:
                                                                  "Casual Leave",
                                                              statusColor:
                                                                  statusYellow,
                                                              statusValue:
                                                                  "Pending",
                                                            ),
                                                    );
                                                  }),
                                            ]),
                                        vSpace(10),
                                      ])),
                                ),

                                vSpace(10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          showYearDate(context);
                        },
                        child: Container(
                          height: fullHeight(context) * 0.05,
                          width: fullWidth(context) * 0.42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: textBlue.withOpacity(0.1),
                              border: Border.all(color: textBlue, width: 1)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textBold(
                                    color: textBlue,
                                    maxLine: 1,
                                    size: 14,
                                    text: "2023"),
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
                      InkWell(
                        onTap: () {
                          Get.toNamed("/applyLeave");
                        },
                        child: Container(
                          height: fullHeight(context) * 0.05,
                          width: fullWidth(context) * 0.42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: textBlue,
                              border: Border.all(color: textBlue, width: 2.0)),
                          child: Center(
                            child: textRegular(
                                color: white,
                                maxLine: 1,
                                size: 14,
                                text: "+ Apply Leave"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  // DateTime _selectedDate = DateTime.now();

  // Future showYearDate() async {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text("Select Year"),
  //         content: Container(
  //           // Need to use container to add size constraint.
  //           width: 300,
  //           height: 300,
  //           child: YearPicker(
  //             firstDate: DateTime(DateTime.now().year - 100, 1),
  //             lastDate: DateTime(DateTime.now().year + 100, 1),
  //             initialDate: DateTime.now(),
  //             // save the selected date to _selectedDate DateTime variable.
  //             // It's used to set the previous selected date when
  //             // re-showing the dialog.
  //             selectedDate: _selectedDate,
  //             onChanged: (DateTime dateTime) {
  //               // close the dialog when year is selected.
  //               Navigator.pop(context);

  //               // Do something with the dateTime selected.
  //               // Remember that you need to use dateTime.year to get the year
  //             },
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }
}
