import 'package:flutter/material.dart';
import 'package:hrmlix/widgets/common_widgets.dart';
import 'package:hrmlix/widgets/profile_avatar.dart';

// ignore: must_be_immutable
class UserCard extends StatelessWidget {
  String name;
  String designation;
  String statusValue;
  Color statusColor;
  String profileImgUrl;

  UserCard({
    super.key,
    required this.name,
    required this.designation,
    required this.statusValue,
    required this.statusColor,
    required this.profileImgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const SizedBox(
                height: 40, width: 40, child: ProfileAvatar(profileImg: "")),
            hSpace(20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textSemiBold(
                    alignment: TextAlign.left,
                    text: name,
                    color: Theme.of(context).colorScheme.primary,
                    size: 14,
                    maxLine: 2),
                textRegular(
                    alignment: TextAlign.left,
                    color: Theme.of(context).colorScheme.onPrimary,
                    text: designation.toString(),
                    size: 12,
                    maxLine: 2)
              ],
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            textRegular(
              alignment: TextAlign.center,
              color: statusColor,
              text: statusValue.toString(),
              size: 12,
            ),
          ],
        )
      ],
    );
  }
}
