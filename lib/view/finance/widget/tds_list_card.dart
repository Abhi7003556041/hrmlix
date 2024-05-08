// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hrmlix/widgets/common_widgets.dart';

// ignore: must_be_immutable
class TdsCListCard extends StatefulWidget {
  final String contentText;
  final String amount;
  final String perMonthAmount;
  TdsCListCard({
    Key? key,
    required this.contentText,
    required this.amount,
    required this.perMonthAmount,
  }) : super(key: key);

  @override
  State<TdsCListCard> createState() => _TdsCListCardState();
}

class _TdsCListCardState extends State<TdsCListCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: fullWidth(context) * 0.35,
                child: textSemiBold(
                    color: Theme.of(context).colorScheme.primary,
                    maxLine: 100,
                    size: 14,
                    text: widget.contentText),
              ),
              vSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  textBold(
                      alignment: TextAlign.right,
                      color: Theme.of(context).colorScheme.primary,
                      maxLine: 1,
                      size: 14,
                      text: "${widget.amount} INR"),
                  textBold(
                      alignment: TextAlign.right,
                      color: Theme.of(context).colorScheme.onPrimary,
                      maxLine: 1,
                      size: 12,
                      text: "${widget.perMonthAmount} / Month"),
                ],
              ),
            ],
          ),
        ),
        hSpace(5),
      ],
    );
  }
}
