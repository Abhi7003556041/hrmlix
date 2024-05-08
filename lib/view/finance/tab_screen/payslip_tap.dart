import 'package:flutter/material.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/view/finance/widget/pay_slip_list_card.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class PayslipTab extends StatefulWidget {
  const PayslipTab({super.key});

  @override
  State<PayslipTab> createState() => _PayslipTabState();
}

class _PayslipTabState extends State<PayslipTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
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
                      size: 22,
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
                        itemCount: 6,
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
                                  : const SizedBox(
                                      height: 10,
                                    ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: PaySlipListCard(
                                  contentText: "Payslip-Apr-2023",
                                ),
                              ),
                            ],
                          );
                        }),
                  ])),
            ),
          ],
        ),
      ),
    );
  }
}
