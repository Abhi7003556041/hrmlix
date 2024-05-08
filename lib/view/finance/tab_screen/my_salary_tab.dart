import 'package:flutter/material.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class MySalaryTab extends StatefulWidget {
  const MySalaryTab({super.key});

  @override
  State<MySalaryTab> createState() => _MySalaryTabState();
}

class _MySalaryTabState extends State<MySalaryTab> {
  List<String> choices = ['Payslip', 'Advance', 'Reimbursement', 'TDS'];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: fullHeight(context) * 0.12,
                color: Theme.of(context).colorScheme.secondary,
                width: fullWidth(context),
              ),
              Container(
                margin: const EdgeInsets.all(20),
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
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textSemiBold(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    maxLine: 1,
                                    size: 20,
                                    text: "71,950.00 INR"),
                                textRegular(
                                    color: statusGreen,
                                    maxLine: 1,
                                    size: 14,
                                    text: "Active"),
                              ],
                            ),
                            vSpace(15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                textSemiBold(
                                    alignment: TextAlign.left,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    maxLine: 1,
                                    size: 14,
                                    text: "Regular Salary"),
                              ],
                            ),
                            vSpace(10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                textRegular(
                                    alignment: TextAlign.left,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                    maxLine: 1,
                                    size: 14,
                                    text: "Effective 30 Aug, 2024"),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        print("Hello");
                                      },
                                      child: textRegular(
                                        color: textBlue,
                                        maxLine: 1,
                                        size: 14,
                                        text: "View Time Line",
                                      ),
                                    ),
                                    hSpace(5),
                                    const SizedBox(
                                      height: 9,
                                      width: 9,
                                      child: Image(
                                          image:
                                              AssetImage(AppImage.triangleBlue),
                                          fit: BoxFit.contain),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ])),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    textBold(
                        color: Theme.of(context).colorScheme.primary,
                        maxLine: 1,
                        size: 16,
                        text: "Breakup for 7,1950.00 INR"),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onTertiary,
                        width: 1,
                      ),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: Container(
                      color: Theme.of(context).colorScheme.secondary,
                      child: Column(
                        children: [
                          Table(
                            border: TableBorder.all(
                              color: Theme.of(context).colorScheme.onTertiary,
                            ),
                            children: [
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color: statusGreen,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "Earning"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color: statusGreen,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "Monthly"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "House Rent"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "17500.00"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "Basic"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "52500.00"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "Gross Earning :"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "70,000.00"),
                                ),
                              ]),
                            ],
                          ),
                          Table(
                            border: TableBorder(
                              // horizontalInside: BorderSide(
                              //     color:  dividerColor, width: 1),
                              verticalInside: BorderSide(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  width: 1),
                              bottom: BorderSide(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  width: 1),
                              top: BorderSide(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  width: 1),
                              left: BorderSide(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  width: 1),
                              right: BorderSide(
                                  color: Theme.of(context).colorScheme.tertiary,
                                  width: 1),
                            ),
                            // border: TableBorder.all(
                            //   color:  dividerColor,
                            // ),
                            children: [
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color: statusGreen,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "Contribution"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color: statusGreen,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "Monthly"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "PF (Employer Contribution)"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "1800.00"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "EDLI Charges"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "75.00"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "EPF Admin Charges"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "75.00"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "Gross Earning :"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "1950"),
                                ),
                              ]),
                            ],
                          ),
                          Table(
                            border: TableBorder.all(
                              color: Theme.of(context).colorScheme.onTertiary,
                            ),
                            children: [
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color: statusRed,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "Deduction"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color: statusRed,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "Monthly"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textRegular(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "PF (Employee Contribution)"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "1800.00"),
                                ),
                              ]),
                              TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.left,
                                      text: "Deduction:"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 14,
                                      alignment: TextAlign.right,
                                      text: "1,800.00"),
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ))
                // Container(
                //   margin: const EdgeInsets.only(top: 10, bottom: 10),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(5),
                //       border: Border.all(
                //         color:  dividerColor,
                //         width: 1,
                //       ),
                //       color:  white),
                //   child: Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Row(
                //             crossAxisAlignment: CrossAxisAlignment.center,
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               textSemiBold(
                //                   color:  statusGreen,
                //                   maxLine: 1,
                //                   size: 14,
                //                   alignment: TextAlign.left,
                //                   text: "Earning"),
                //               Divider(
                //                 color:  dividerColor,
                //                 thickness: 1,
                //                 height: 40,
                //               ),
                //               textSemiBold(
                //                   color:  statusGreen,
                //                   maxLine: 1,
                //                   size: 14,
                //                   alignment: TextAlign.left,
                //                   text: "Earning"),
                //             ]),
                //         Divider(
                //           color:  dividerColor,
                //           thickness: 1,
                //         ),
                //         Container(
                //           height: 150,
                //           child: GridView.count(
                //             crossAxisCount: 3,
                //             crossAxisSpacing: 4.0,
                //             mainAxisSpacing: 8.0,
                //             children: List.generate(choices.length, (index) {
                //               return Center(
                //                 child: Text(choices[index]),
                //               );
                //             }),
                //           ),
                //         ),
                //         Container(
                //           color: Colors.white,
                //           child: Table(
                //             border: TableBorder.all(color: Colors.black),
                //             children: [
                //               TableRow(children: [
                //                 Text('Cell 1'),
                //                 Text('Cell 2'),
                //               ]),
                //               TableRow(children: [
                //                 Text('Cell 4'),
                //                 Text('Cell 5'),
                //               ])
                //             ],
                //           ),
                //         )
                //       ]),
                // )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
