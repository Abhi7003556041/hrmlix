import 'package:flutter/material.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/view/finance/widget/extra_earning_list_card.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class ExtraEarningTab extends StatefulWidget {
  const ExtraEarningTab({super.key});

  @override
  State<ExtraEarningTab> createState() => _ExtraEarningTabState();
}

class _ExtraEarningTabState extends State<ExtraEarningTab> {
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
                              text: "Apply"),
                        ),
                      ),
                    ),
                  ],
                ),
                vSpace(30),
                // Pending Extra Earning section start

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
                                    child: ExtraEarningListCard(
                                      amount: "10,000",
                                      contentText: "Earning Head 1",
                                      date: "30 Aug, 2024",
                                      status: "Pending",
                                      statusColor: statusYellow,
                                      earningMonth: "Sep 2023",
                                    ),
                                  ),
                                ],
                              );
                            }),
                        vSpace(20)
                      ])),
                ),

                //Current Pending Extra Earning section end

                // Extra Earning History section start

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
                                    text: "Extra Earning History"),
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

                //Extra Earning History section end

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
