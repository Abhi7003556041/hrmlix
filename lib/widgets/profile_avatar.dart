import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, required this.profileImg});
  final String profileImg;

  @override
  Widget build(BuildContext context) {
    //return DefaultProfileAvatar();
    return profileImg.isEmpty
        ? DefaultProfileAvatar()
        : CachedNetworkImage(
            imageUrl: profileImg,
            imageBuilder: (context, imageProvider) => CircleAvatar(
                //backgroundColor:  homeAvatarColor,
                backgroundImage: imageProvider,
                radius: 20),
            placeholder: (context, url) =>
                DefaultProfileAvatar(), // CircularProgressIndicator(),
            errorWidget: (context, url, error) => DefaultProfileAvatar());
  }
}

Widget checkUrl(String url) {
  try {
    return CachedNetworkImage(
        imageUrl: url,
        imageBuilder: (context, imageProvider) => CircleAvatar(
            //backgroundColor:  homeAvatarColor,
            backgroundImage: imageProvider,
            radius: 20),
        placeholder: (context, url) =>
            DefaultProfileAvatar(), // CircularProgressIndicator(),
        errorWidget: (context, url, error) => DefaultProfileAvatar());
  } catch (e) {
    return DefaultProfileAvatar();
  }
}

class DefaultProfileAvatar extends StatelessWidget {
  const DefaultProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: white,
      backgroundImage: AssetImage(AppImage.manProfileImg),
      radius: 50,
    );
  }
}
