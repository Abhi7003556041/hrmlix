// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hrmlix/widgets/common_widgets.dart';
import 'package:hrmlix/widgets/status_card.dart';

// ignore: must_be_immutable
class ReimbursementListCard extends StatefulWidget {
  final String contentText;
  final String amount;
  final String date;
  final String wageMonth;
  final String status;
  Color statusColor;
  ReimbursementListCard({
    Key? key,
    required this.contentText,
    required this.amount,
    required this.date,
    required this.wageMonth,
    required this.status,
    required this.statusColor,
  }) : super(key: key);

  @override
  State<ReimbursementListCard> createState() => _ReimbursementListCardState();
}

class _ReimbursementListCardState extends State<ReimbursementListCard> {
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
                      text: "Wage Month: ${widget.wageMonth}"),
                  hSpace(10),
                  StatusCard(
                      colorValue: widget.statusColor, text: widget.status),
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
              vSpace(5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  textRegular(
                      color: Theme.of(context).colorScheme.onPrimary,
                      maxLine: 1,
                      size: 12,
                      text: widget.date),
                ],
              ),
            ],
          ),
        ),
        hSpace(10),
        Icon(
          Icons.chevron_right,
          color: Theme.of(context).colorScheme.onPrimary,
          size: 30.0,
        ),
      ],
    );
  }
}