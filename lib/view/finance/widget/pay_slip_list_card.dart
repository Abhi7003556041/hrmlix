// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

// ignore: must_be_immutable
class PaySlipListCard extends StatefulWidget {
  final String contentText;
  PaySlipListCard({
    Key? key,
    required this.contentText,
  }) : super(key: key);

  @override
  State<PaySlipListCard> createState() => _PaySlipListCardState();
}

class _PaySlipListCardState extends State<PaySlipListCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 25,
          width: 25,
          child: Image(image: AssetImage(AppImage.pdfBlue)),
        ),
        hSpace(15),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: fullWidth(context) * 0.50,
                child: textRegular(
                    color: Theme.of(context).colorScheme.onPrimary,
                    maxLine: 5,
                    size: 14,
                    text: widget.contentText),
              ),
            ],
          ),
        ),
        // hSpace(10),
        PopupMenuButton(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.8),
            iconColor: Theme.of(context).colorScheme.onPrimary,
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).colorScheme.onPrimary,
              size: 30.0,
            ),
            onSelected: (value) {},
            itemBuilder: (BuildContext bc) {
              return [
                PopupMenuItem(
                  value: 'edit',
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        color: textBlue,
                        size: 18.0,
                      ),
                      hSpace(10),
                      textRegular(
                          color: Theme.of(context).colorScheme.primary,
                          maxLine: 1,
                          size: 14,
                          text: "Edit")
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'remove',
                  child: Row(
                    children: [
                      Icon(
                        Icons.clear,
                        color: statusRed,
                        size: 18.0,
                      ),
                      hSpace(10),
                      textRegular(
                          color: Theme.of(context).colorScheme.primary,
                          maxLine: 1,
                          size: 14,
                          text: "Remove")
                    ],
                  ),
                ),
              ];
            })
        // InkWell(
        //   onTap: () {
        //     print("more");
        //     PopupMenuButton<String>(
        //         onSelected: (value) {
        //           print(value);
        //         },
        //         itemBuilder: (context) => <PopupMenuEntry<String>>[
        //               PopupMenuItem(
        //                 value: "edit",
        //                 child: Text('Edit Post'),
        //               ),
        //               PopupMenuItem(
        //                 value: "delete",
        //                 child: Text('Delete Post'),
        //               ),
        //             ]);
        //   },
        //   child: const Icon(
        //     Icons.more_vert,
        //     color:  Theme.of(context).colorScheme.onPrimary,
        //     size: 30.0,
        //   ),
        // ),
      ],
    );
  }
}
