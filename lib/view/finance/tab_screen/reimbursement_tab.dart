import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/view/finance/widget/reimbursement_list_card.dart';
import 'package:hrmlix/widgets/common_widgets.dart';
import 'package:hrmlix/widgets/pie_chart/custome_donut_chart.dart';

class ReimbursementTab extends StatefulWidget {
  const ReimbursementTab({super.key});

  @override
  State<ReimbursementTab> createState() => _ReimbursementTabState();
}

class _ReimbursementTabState extends State<ReimbursementTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: fullHeight(context) * 0.08,
            width: fullWidth(context),
            color: Theme.of(context).colorScheme.secondary,
          ),
          //// Leave Activity

          Padding(
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                Row(
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
                        print("PPPPPPP");
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
                              text: "Reimbursement Apply"),
                        ),
                      ),
                    ),
                  ],
                ),
                vSpace(45),
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
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
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 15.0, bottom: 20, left: 5, right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              textRegular(
                                  color: Theme.of(context).colorScheme.primary,
                                  maxLine: 1,
                                  size: 14,
                                  text: "Claim Amount"),
                              vSpace(5),
                              textSemiBold(
                                  color: Theme.of(context).colorScheme.primary,
                                  maxLine: 1,
                                  size: 20,
                                  text: "20,000 INR"),
                              vSpace(20),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    hSpace(25),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 14,
                                            text: "Settled Amount",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: statusGreen,
                                            maxLine: 1,
                                            size: 15,
                                            text: "40,000 INR",
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
                                          textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 14,
                                            text: "Settlement Due",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: statusRed,
                                            maxLine: 1,
                                            size: 15,
                                            text: "60,000 INR",
                                          ),
                                        ]),
                                  ]),
                              vSpace(30),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomeDoNutChart(
                                    dataMap: const {
                                      'AmountPaid': {
                                        'color': Colors.green,
                                        'value': 40
                                      },
                                      'AmountLeft': {
                                        'color': Colors.red,
                                        'value': 60
                                      },
                                    },
                                    innerCircleColor:
                                        Theme.of(context).colorScheme.secondary,
                                    innerCircleSize: 55,
                                    outerCircleSize: fullWidth(context) * 0.40,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      vSpace(10),
                                      textBold(
                                          color: statusGreen,
                                          maxLine: 1,
                                          size: 25,
                                          text: "40%"),
                                      vSpace(10),
                                      textBold(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onPrimary,
                                          maxLine: 1,
                                          size: 15,
                                          alignment: TextAlign.left,
                                          text: "Settled till Date"),
                                    ],
                                  )
                                ],
                              ),
                              vSpace(5),
                            ],
                          ),
                        ),
                      ])),
                ),

                // Current Pending Reimbursement section start

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
                                        image: AssetImage(
                                            AppImage.rectangleBlueLine)),
                                  ),
                                  hSpace(15),
                                  textBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "Pending Approval"),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      print("Hello");
                                    },
                                    child: textSemiBold(
                                      color: textBlue,
                                      maxLine: 1,
                                      size: 14,
                                      text: "View All",
                                    ),
                                  ),
                                  hSpace(8),
                                  const SizedBox(
                                    height: 10,
                                    width: 10,
                                    child: Image(
                                        image:
                                            AssetImage(AppImage.triangleBlue),
                                        fit: BoxFit.contain),
                                  ),
                                  hSpace(15),
                                ],
                              )
                            ]),
                        vSpace(5),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Divider(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    thickness: 1,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 10, top: 5, bottom: 5),
                                    child: ReimbursementListCard(
                                      amount: "20,000",
                                      contentText: "Travel Expences",
                                      date: "30 Aug, 2024",
                                      status: "Pending",
                                      statusColor: statusYellow,
                                      wageMonth: "Sep",
                                    ),
                                  ),
                                ],
                              );
                            }),
                        vSpace(20)
                      ])),
                ),

                //Current Pending Reimbursement section end

                // Reimbursement History section start

                InkWell(
                  onTap: () {
                    Get.toNamed("/reimbursementHistory");
                  },
                  child: Container(
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
                                        image: AssetImage(
                                            AppImage.rectangleBlueLine)),
                                  ),
                                  hSpace(15),
                                  textBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "Reimbursement History"),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                                child: Icon(
                                  Icons.chevron_right,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  size: 30.0,
                                ),
                              ),
                            ]),
                        vSpace(15),
                      ],
                    )),
                  ),
                ),

                //Reimbursement History section end

                vSpace(10),
              ],
            ),
          ),

          //// Leave type section
        ],
      ),
    );
  }
}
