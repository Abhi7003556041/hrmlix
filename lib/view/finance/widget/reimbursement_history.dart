import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/view/finance/widget/reimbursement_list_card.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class ReimbursementHistory extends StatefulWidget {
  const ReimbursementHistory({super.key});

  @override
  State<ReimbursementHistory> createState() => _ReimbursementHistoryState();
}

class _ReimbursementHistoryState extends State<ReimbursementHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Reimbursement History"),
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
                                      left: 20, right: 10, top: 10, bottom: 10),
                                  child: ReimbursementListCard(
                                    amount: "10,000",
                                    contentText: "Travel Expences",
                                    date: "30 Aug, 2024",
                                    status: "APPROVED",
                                    statusColor: statusGreen,
                                    wageMonth: "Aug",
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
