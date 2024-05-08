import 'package:flutter/material.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

// ignore: must_be_immutable
class StatusCard extends StatelessWidget {
  String text;
  Color colorValue;
  StatusCard({super.key, required this.text, required this.colorValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: 80,
      decoration: BoxDecoration(
          color: colorValue.withOpacity(0.06),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: colorValue,
            width: 1,
          )),
      child: Center(
        child: textRegular(
          text: text.toUpperCase(),
          color: colorValue,
          size: 12,
          alignment: TextAlign.center,
        ),
      ),
    );
  }
}
