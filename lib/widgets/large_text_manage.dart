import 'package:flutter/material.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class LargeTextHandle extends StatefulWidget {
  final String text;

  LargeTextHandle({super.key, required this.text});

  @override
  _LargeTextHandleState createState() => _LargeTextHandleState();
}

class _LargeTextHandleState extends State<LargeTextHandle> {
  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 200) {
      firstHalf = widget.text.substring(0, 200);
      secondHalf = widget.text.substring(200, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf.isEmpty
        ? Row(
            children: [
              Expanded(
                child: textRegular(
                    color: Theme.of(context).colorScheme.primary,
                    maxLine: 10,
                    size: 14,
                    text: firstHalf),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              flag
                  ? Row(
                      children: [
                        Expanded(
                          child: textRegular(
                              color: Theme.of(context).colorScheme.primary,
                              maxLine: 10,
                              size: 14,
                              text: firstHalf + "..."),
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(
                          child: textRegular(
                              color: Theme.of(context).colorScheme.primary,
                              maxLine: 200,
                              size: 14,
                              text: firstHalf + secondHalf),
                        ),
                      ],
                    ),
              InkWell(
                child: flag
                    ? textSemiBold(
                        color: textBlue, maxLine: 1, size: 13, text: "See more")
                    : textSemiBold(
                        color: textBlue,
                        maxLine: 1,
                        size: 13,
                        text: "See less"),
                onTap: () {
                  setState(() {
                    flag = !flag;
                  });
                },
              ),
            ],
          );
  }
}
