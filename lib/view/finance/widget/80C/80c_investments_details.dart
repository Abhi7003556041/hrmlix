import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/view/finance/widget/80C/80c_investments_list_card.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class Investments80CDetails extends StatefulWidget {
  const Investments80CDetails({super.key});

  @override
  State<Investments80CDetails> createState() => _Investments80CDetailsState();
}

class _Investments80CDetailsState extends State<Investments80CDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            textBold(
              text: "80C Investments",
              color: Theme.of(context).colorScheme.primary,
              size: 16,
            ),
            textRegular(
              text: "(Max Limit: 1,50,000.00)",
              color: Theme.of(context).colorScheme.onPrimary,
              size: 12,
            ),
          ],
        ),
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textRegular(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        maxLine: 1,
                                        size: 12,
                                        alignment: TextAlign.left,
                                        text: "Section"),
                                    textSemiBold(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        maxLine: 1,
                                        size: 16,
                                        alignment: TextAlign.left,
                                        text: "80CC"),
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Get.toNamed("/addInvestments80C");
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: textBlue,
                                        width: 1.5,
                                        style: BorderStyle.solid),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, bottom: 8, left: 20, right: 20),
                                  child: textRegular(
                                      size: 14,
                                      color: textBlue,
                                      maxLine: 1,
                                      text: "+ Add"),
                                ),
                              ),
                            )
                          ]),
                      vSpace(5),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
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
                                  child: Investments80CListCard(
                                    amount: "7,6950.00",
                                    contentText: "Mutual Fund Pension",
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
                                      image: AssetImage(
                                          AppImage.rectangleBlueLine)),
                                ),
                                hSpace(15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    textRegular(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        maxLine: 1,
                                        size: 12,
                                        alignment: TextAlign.left,
                                        text: "Section"),
                                    textSemiBold(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        maxLine: 1,
                                        size: 16,
                                        alignment: TextAlign.left,
                                        text: "80CCD(1)"),
                                  ],
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                print("Add Btton");
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: textBlue,
                                        width: 1.5,
                                        style: BorderStyle.solid),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(8))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8, bottom: 8, left: 20, right: 20),
                                  child: textRegular(
                                      size: 14,
                                      color: textBlue,
                                      maxLine: 1,
                                      text: "+ Add"),
                                ),
                              ),
                            )
                          ]),
                      vSpace(5),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 3,
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
                                  child: Investments80CListCard(
                                    amount: "7,6950.00",
                                    contentText: "Mutual Fund Pension",
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
      ),
    );
  }
}
