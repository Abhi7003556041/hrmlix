import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/controller/bottom_navigation_controller.dart';
import 'package:hrmlix/utils/theme/theme_controller.dart';
import 'package:hrmlix/view/profile/profile_screen.dart';
import 'package:hrmlix/widgets/common_widgets.dart';
import 'package:hrmlix/widgets/profile_avatar.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController(), permanent: false);
  final ThemeController themeController =
      Get.put(ThemeController(), permanent: false);
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: white, // change your desired color
      ),
      child: Drawer(
        backgroundColor: Get.theme.primaryColor,
        elevation: 10.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // Important: Remove any padding from the ListView.
          // padding: EdgeInsets.zero,

          children: [
            vSpace(80),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Get.back();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 50,
                        width: 50,
                        child: ProfileAvatar(profileImg: "")),
                    hSpace(20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textSemiBold(
                            alignment: TextAlign.left,
                            text: "Brent Farrell DVM",
                            color: Theme.of(context).colorScheme.primary,
                            size: 16,
                            maxLine: 2),
                        textRegular(
                            alignment: TextAlign.left,
                            color: Theme.of(context).colorScheme.onPrimary,
                            text: "UI/UX Designer",
                            size: 12,
                            maxLine: 2)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Theme.of(context).colorScheme.tertiary,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 10),
                    title: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Image.asset(AppImage.darkModeImg,
                            color: Theme.of(context).colorScheme.primary,
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain),
                        hSpace(12),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              textSemiBold(
                                  color: Theme.of(context).colorScheme.primary,
                                  maxLine: 1,
                                  size: 14,
                                  text: "Dark Theme"),
                              Obx(
                                () => Transform.scale(
                                  scaleX: 1.0,
                                  scaleY: 0.9,
                                  child: Switch.adaptive(
                                    trackOutlineColor:
                                        MaterialStateProperty.all<Color>(
                                            Color(0XFF8A8E9C).withOpacity(0.3)),
                                    activeColor: loginButtonColor,
                                    inactiveTrackColor: hintTextColor,
                                    value: themeController.currentTheme.value ==
                                        ThemeMode.dark,
                                    onChanged: (bool value) {
                                      themeController.switchTheme();
                                      Get.changeThemeMode(
                                          themeController.currentTheme.value);
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Theme.of(context).colorScheme.tertiary,
                    thickness: 1,
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 10),
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(AppImage.logoutButtonImg,
                            color: Theme.of(context).colorScheme.primary,
                            height: 20,
                            width: 20,
                            fit: BoxFit.contain),
                        hSpace(12),
                        textSemiBold(
                            color: Theme.of(context).colorScheme.primary,
                            maxLine: 1,
                            size: 13,
                            text: "Log Out")
                      ],
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: textBold(
                                color: Theme.of(context).colorScheme.primary,
                                maxLine: 1,
                                size: 14,
                                text: 'Logout',
                              ),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    textSemiBold(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                      maxLine: 1,
                                      size: 13,
                                      text: 'Are you sure want to Logout?',
                                    ),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('No'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: const Text('Yes'),
                                  onPressed: () async {
                                    // await Apputil.logoutStoredKey();
                                    // Get.offAll(LoginScreen());
                                  },
                                ),
                              ],
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    textRegular(
                        color: Theme.of(context).colorScheme.onPrimary,
                        maxLine: 1,
                        size: 12,
                        text: "Version 1.0 2546"),
                    vSpace(10),
                    Center(
                      child: Container(
                        width: fullWidth(context) * 0.25,
                        height: fullHeight(context) * 0.038,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(AppImage.appLogo),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            vSpace(45),
          ],
        ),
      ),
    );
  }
}
