import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/view/finance/widget/tds_list_card.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class TDSTab extends StatefulWidget {
  const TDSTab({super.key});

  @override
  State<TDSTab> createState() => _TDSTabState();
}

class _TDSTabState extends State<TDSTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    vSpace(15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.pop(context);
                            print("2023");
                          },
                          child: Container(
                            height: fullHeight(context) * 0.05,
                            width: fullWidth(context) * 0.50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: textBlue.withOpacity(0.1),
                                border: Border.all(color: textBlue, width: 1)),
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
                                      text: "APR 2023 - MAR 2024"),
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
                      ],
                    ),
                    vSpace(10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigator.pop(context);
                            print("sss");
                          },
                          child: Container(
                            height: fullHeight(context) * 0.05,
                            width: fullWidth(context) * 0.50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Theme.of(context).colorScheme.secondary,
                                border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    width: 1)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 14,
                                      text: "Old Regime"),
                                  Icon(
                                    Icons.expand_more,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 20.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    vSpace(10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textRegular(
                            color: Theme.of(context).colorScheme.onPrimary,
                            maxLine: 1,
                            size: 14,
                            text: "Total Declared Amount")
                      ],
                    ),
                    vSpace(10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textSemiBold(
                            color: Theme.of(context).colorScheme.primary,
                            maxLine: 1,
                            size: 20,
                            text: "5,40,250.00 INR")
                      ],
                    ),
                    vSpace(20)
                  ])),
            ),
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
                                    image:
                                        AssetImage(AppImage.rectangleBlueLine)),
                              ),
                              hSpace(15),
                              textSemiBold(
                                  color: Theme.of(context).colorScheme.primary,
                                  maxLine: 1,
                                  size: 16,
                                  alignment: TextAlign.left,
                                  text: "Are you staying in a rented house?"),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              print(" Btton");
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary
                                          .withOpacity(0.6),
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.0,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          )
                        ]),
                    vSpace(5),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 10, top: 5, bottom: 5),
                                child: TdsCListCard(
                                  amount: "98,400.00",
                                  contentText:
                                      "147, Alfredo, 8th East Street, Thiruvanmiyur, Chennai-41",
                                  perMonthAmount: "8,200.00",
                                ),
                              ),
                            ],
                          );
                        }),
                    vSpace(20)
                  ])),
            ),
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
                                    image:
                                        AssetImage(AppImage.rectangleBlueLine)),
                              ),
                              hSpace(15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "80C Investments"),
                                  textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "(Max Limit: 1,50,000.00)"),
                                ],
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed("/investments80C");
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary
                                          .withOpacity(0.6),
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.0,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          )
                        ]),
                    vSpace(5),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 10, top: 5, bottom: 5),
                                child: TdsCListCard(
                                  amount: "98,400.00",
                                  contentText:
                                      "147, Alfredo, 8th East Street, Thiruvanmiyur, Chennai-41",
                                  perMonthAmount: "8,200.00",
                                ),
                              ),
                            ],
                          );
                        }),
                    vSpace(20)
                  ])),
            ),
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
                                    image:
                                        AssetImage(AppImage.rectangleBlueLine)),
                              ),
                              hSpace(15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "80D Investments"),
                                  textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 16,
                                      alignment: TextAlign.left,
                                      text: "(Max Limit: 1,00,000.00)"),
                                ],
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () {
                              print(" Btton");
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary
                                          .withOpacity(0.6),
                                      width: 1,
                                      style: BorderStyle.solid),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5))),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.0,
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                ),
                              ),
                            ),
                          )
                        ]),
                    vSpace(5),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Divider(
                                color: Theme.of(context).colorScheme.tertiary,
                                thickness: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20, right: 10, top: 5, bottom: 5),
                                child: TdsCListCard(
                                  amount: "98,400.00",
                                  contentText:
                                      "147, Alfredo, 8th East Street, Thiruvanmiyur, Chennai-41",
                                  perMonthAmount: "8,200.00",
                                ),
                              ),
                            ],
                          );
                        }),
                    vSpace(20)
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
