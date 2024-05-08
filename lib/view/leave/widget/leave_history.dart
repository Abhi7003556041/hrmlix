import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/view/leave/widget/leave_card.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class LeaveHistory extends StatefulWidget {
  const LeaveHistory({super.key});

  @override
  State<LeaveHistory> createState() => _LeaveHistoryState();
}

class _LeaveHistoryState extends State<LeaveHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leave History"),
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 18.0,
          ),
        ),
      ),
      // backgroundColor: appBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
          child: Column(
            children: [
              vSpace(15),
              InkWell(
                onTap: () {
                  showYearDate(context);
                },
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textSemiBold(
                        color: textBlue,
                        maxLine: 1,
                        size: 14,
                        text: "2023",
                      ),
                      hSpace(10),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: textBlue,
                        size: 20,
                      )
                    ]),
              ),
              vSpace(10),
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
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                index > 0
                                    ? Divider(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                        thickness: 1,
                                      )
                                    : vSpace(10),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 20.0,
                                      top: 10,
                                      bottom: 10),
                                  child: index < 1
                                      ? LeaveCard(
                                          leaveDate: "Jan 25, 2024",
                                          leaveType: "1 Day, Paid Leave",
                                          statusColor: statusGreen,
                                          statusValue: "Approved",
                                        )
                                      : LeaveCard(
                                          leaveDate: "Jun 10, 2024",
                                          leaveType: "Casual Leave",
                                          statusColor: statusRed,
                                          statusValue: "REJECTED",
                                        ),
                                ),
                              ],
                            );
                          }),
                      vSpace(10)
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
