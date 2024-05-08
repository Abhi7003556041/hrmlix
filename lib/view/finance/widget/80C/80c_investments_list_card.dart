// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hrmlix/widgets/common_widgets.dart';

// ignore: must_be_immutable
class Investments80CListCard extends StatefulWidget {
  final String contentText;
  final String amount;
  Investments80CListCard({
    Key? key,
    required this.contentText,
    required this.amount,
  }) : super(key: key);

  @override
  State<Investments80CListCard> createState() => _Investments80CListCardState();
}

class _Investments80CListCardState extends State<Investments80CListCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  textRegular(
                      color: Theme.of(context).colorScheme.onPrimary,
                      maxLine: 1,
                      size: 12,
                      text: "Deduction Name"),
                  hSpace(10),
                  textRegular(
                      color: Theme.of(context).colorScheme.onPrimary,
                      maxLine: 1,
                      size: 12,
                      text: "Declaration"),
                ],
              ),
              vSpace(10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: fullWidth(context) * 0.40,
                    child: textBold(
                        color: Theme.of(context).colorScheme.primary,
                        maxLine: 1,
                        size: 14,
                        text: widget.contentText),
                  ),
                  textBold(
                      color: Theme.of(context).colorScheme.primary,
                      maxLine: 1,
                      size: 14,
                      text: "${widget.amount} INR"),
                ],
              ),
            ],
          ),
        ),
        hSpace(10),
        Icon(
          Icons.more_vert,
          color: Theme.of(context).colorScheme.onPrimary,
          size: 25.0,
        ),
      ],
    );
  }
}
