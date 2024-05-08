import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/controller/bottom_navigation_controller.dart';
import 'package:hrmlix/view/attendance/attendance.dart';
import 'package:hrmlix/view/profile/drawer.dart';
import 'package:hrmlix/view/dashboard/dashboard.dart';
import 'package:hrmlix/view/finance/finance.dart';
import 'package:hrmlix/view/leave/leave.dart';
import 'package:hrmlix/widgets/profile_avatar.dart';

class BottomNavigation extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, bottomNavigationController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 90,
          child: NavigationBarTheme(
            data: const NavigationBarThemeData(backgroundColor: Colors.green),
            child: BottomNavigationBar(
              selectedFontSize: 14,
              unselectedFontSize: 10,
              onTap: bottomNavigationController.changeTabIndex,
              currentIndex: bottomNavigationController.tabIndex.value,
              showUnselectedLabels: true,
              unselectedItemColor: Colors.white.withOpacity(0.5),
              selectedItemColor: loginButtonColor,
              type: BottomNavigationBarType.fixed,
              backgroundColor: appColor,
              selectedIconTheme:
                  IconThemeData(color: loginButtonColor, size: 30),
              items: const [
                BottomNavigationBarItem(
                  activeIcon: SizedBox(
                    height: 20,
                    width: 20,
                    child:
                        Image(image: AssetImage(AppImage.dashboardImageBlue)),
                  ),
                  icon: Icon(
                    Icons.dashboard,
                    size: 25.0,
                  ),
                  // icon: Container(
                  //   margin: EdgeInsets.only(bottom: 7),
                  //   child: Image.asset(
                  //     AppImage.dashboardImage,
                  //     height: 18,
                  //     width: 18,
                  //   ),
                  // ),
                  label: 'Dashboard',
                  backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
                BottomNavigationBarItem(
                  activeIcon: SizedBox(
                    height: 20,
                    width: 20,
                    child:
                        Image(image: AssetImage(AppImage.attendanceImageBlue)),
                  ),
                  icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image(image: AssetImage(AppImage.attendanceImage)),
                  ),
                  label: 'Attendance',
                  backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
                BottomNavigationBarItem(
                  activeIcon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image(image: AssetImage(AppImage.leaveImageBlue)),
                  ),
                  icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image(image: AssetImage(AppImage.leaveImage)),
                  ),
                  label: 'Leave',
                  backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
                BottomNavigationBarItem(
                  activeIcon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image(image: AssetImage(AppImage.financeImageBlue)),
                  ),
                  icon: SizedBox(
                    height: 20,
                    width: 20,
                    child: Image(image: AssetImage(AppImage.financeImage)),
                  ),
                  label: 'Finance',
                  backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
              ],
            ),
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController bottomNavigationController =
        Get.put(BottomNavigationController(), permanent: false);
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        // backgroundColor: white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Obx(
            () => Text(bottomNavigationController.titelText.value.toString())),
        // title: Obx(() => textBold(
        //     color: titleTextColor,
        //     maxLine: 1,
        //     size: 18,
        //     text: bottomNavigationController.titelText.value.toString())),
        actions: [
          Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  icon: const SizedBox(
                      height: 30,
                      width: 30,
                      child: ProfileAvatar(profileImg: "")),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              );
            },
          ),
        ],  
      ),
      drawer: const DrawerWidget(),
      bottomNavigationBar:
          buildBottomNavigationMenu(context, bottomNavigationController),
      body: Obx(() => IndexedStack(
            index: bottomNavigationController.tabIndex.value,
            children: const [
              Dashboard(),
              Attendance(),
              Leave(),
              Finance(),
            ],
          )),
    );
  }
}
