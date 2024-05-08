import 'package:flutter/material.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/widgets/common_widgets.dart';
import 'package:hrmlix/widgets/pie_chart/custome_donut_chart.dart';
import 'package:hrmlix/widgets/status_card.dart';

class AdvanceTab extends StatefulWidget {
  const AdvanceTab({super.key});

  @override
  State<AdvanceTab> createState() => _AdvanceTabState();
}

class _AdvanceTabState extends State<AdvanceTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: fullHeight(context) * 0.2,
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
                              text: "+ Advance Apply"),
                        ),
                      ),
                    ),
                  ],
                ),
                vSpace(20),
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
                              top: 20.0, bottom: 20, left: 5, right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              textRegular(
                                  color: Theme.of(context).colorScheme.primary,
                                  maxLine: 1,
                                  size: 14,
                                  text: "Outstanding Amount"),
                              vSpace(15),
                              textSemiBold(
                                  color: red,
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
                                            size: 15,
                                            text: "Total Installment",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 16,
                                            text: "12",
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
                                            size: 15,
                                            text: "Ongoing Advance",
                                          ),
                                          vSpace(5),
                                          textSemiBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 16,
                                            text: "3",
                                          ),
                                        ]),
                                  ]),
                            ],
                          ),
                        ),
                      ])),
                ),

                // Current Overview section start

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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  hSpace(15),
                                  textBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "Current Overview"),
                                ],
                              ),
                            ]),
                        vSpace(10),
                        Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CustomeDoNutChart(
                                      dataMap: const {
                                        'AmountPaid': {
                                          'color': Colors.green,
                                          'value': 66
                                        },
                                        'AmountLeft': {
                                          'color': Colors.red,
                                          'value': 34
                                        },
                                      },
                                      innerCircleColor: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      innerCircleSize: 55,
                                      outerCircleSize:
                                          fullWidth(context) * 0.40,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        vSpace(10),
                                        textBold(
                                            color: statusGreen,
                                            maxLine: 1,
                                            size: 25,
                                            text: "66%"),
                                        vSpace(10),
                                        textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 15,
                                            alignment: TextAlign.left,
                                            text: "Recover till Date"),
                                      ],
                                    )
                                  ],
                                ),
                                vSpace(20),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 15,
                                      text: "Advance Amount",
                                    ),
                                    textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      text: "60,000 INR",
                                    ),
                                  ],
                                ),
                                vSpace(10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 15,
                                      text: "Amount Paid",
                                    ),
                                    textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      text: "40,000 INR",
                                    ),
                                  ],
                                ),
                                vSpace(10),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 15,
                                      text: "Amount Left",
                                    ),
                                    textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      text: "20,000 INR",
                                    ),
                                  ],
                                ),
                              ]),
                        ),
                        vSpace(10),
                      ])),
                ),

                //Current Overview section end
                // Current Outstanding section start

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
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                      text: "Outstanding"),
                                ],
                              ),
                            ]),
                        vSpace(10),
                        Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "30 Aug, 2024"),
                                        hSpace(10),
                                        StatusCard(
                                            colorValue: textBlue,
                                            text: "ONGOING"),
                                      ],
                                    ),
                                    vSpace(10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: fullWidth(context) * 0.40,
                                          child: textBold(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              maxLine: 1,
                                              size: 14,
                                              text: "Marriage"),
                                        ),
                                        textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 14,
                                            text: "10,00,000 INR"),
                                      ],
                                    ),
                                    vSpace(5),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "30 Aug, 2024"),
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 16,
                                            text: "2/1"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              hSpace(5),
                              Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).colorScheme.onPrimary,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "30 Aug, 2024"),
                                        hSpace(10),
                                        StatusCard(
                                            colorValue: textBlue,
                                            text: "ONGOING"),
                                      ],
                                    ),
                                    vSpace(10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: fullWidth(context) * 0.40,
                                          child: textBold(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              maxLine: 1,
                                              size: 14,
                                              text: "Marriage"),
                                        ),
                                        textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 14,
                                            text: "10,00,000 INR"),
                                      ],
                                    ),
                                    vSpace(5),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "30 Aug, 2024"),
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 16,
                                            text: "2/1"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              hSpace(5),
                              Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).colorScheme.onPrimary,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ])),
                ),

                //Current Outstanding section end
                // Current Pending Approval section start

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
                        vSpace(10),
                        Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "30 Aug, 2024"),
                                        hSpace(10),
                                        StatusCard(
                                            colorValue: statusYellow,
                                            text: "PENDING"),
                                      ],
                                    ),
                                    vSpace(10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: fullWidth(context) * 0.40,
                                          child: textBold(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              maxLine: 1,
                                              size: 14,
                                              text: "Marriage"),
                                        ),
                                        textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 14,
                                            text: "10,00,000 INR"),
                                      ],
                                    ),
                                    vSpace(5),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "30 Aug, 2024"),
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 16,
                                            text: "2/1"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              hSpace(5),
                              Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).colorScheme.onPrimary,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Theme.of(context).colorScheme.tertiary,
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "30 Aug, 2024"),
                                        hSpace(10),
                                        StatusCard(
                                            colorValue: statusYellow,
                                            text: "PENDING"),
                                      ],
                                    ),
                                    vSpace(10),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: fullWidth(context) * 0.40,
                                          child: textBold(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                              maxLine: 1,
                                              size: 14,
                                              text: "Marriage"),
                                        ),
                                        textBold(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            maxLine: 1,
                                            size: 14,
                                            text: "10,00,000 INR"),
                                      ],
                                    ),
                                    vSpace(5),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 12,
                                            text: "30 Aug, 2024"),
                                        textRegular(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onPrimary,
                                            maxLine: 1,
                                            size: 16,
                                            text: "2/1"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              hSpace(5),
                              Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).colorScheme.onPrimary,
                                size: 30.0,
                              ),
                            ],
                          ),
                        ),
                      ])),
                ),

                //Current Pending Approval section end

                // Advance History section start

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
                            Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Icon(
                                Icons.chevron_right,
                                color: Theme.of(context).colorScheme.onPrimary,
                                size: 30.0,
                              ),
                            ),
                          ]),
                      vSpace(15),
                    ],
                  )),
                ),

                //Advance History section end

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
