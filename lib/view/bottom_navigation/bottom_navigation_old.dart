import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/view/attendance/attendance.dart';
import 'package:hrmlix/view/dashboard/dashboard.dart';
import 'package:hrmlix/view/finance/finance.dart';
import 'package:hrmlix/view/leave/leave.dart';

class Bottom_Navigation_Screen extends StatefulWidget {
  const Bottom_Navigation_Screen({super.key});

  @override
  State<Bottom_Navigation_Screen> createState() =>
      _Bottom_Navigation_ScreenState();
}

class _Bottom_Navigation_ScreenState extends State<Bottom_Navigation_Screen> {
  DateTime? currentBackPressTime;
  List pages = [
    Dashboard(),
    Attendance(),
    Leave(),
    Finance(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (currentIndex == 0) {
          SystemNavigator.pop();
          return false;
        } else {
          setState(() {
            currentIndex = 0;
          });
        }
        return false;
      },
      child: IndexedStack(children: [
        Scaffold(
          body: pages[currentIndex],
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(backgroundColor: Colors.green),
            child: BottomNavigationBar(
              selectedFontSize: 14,
              unselectedFontSize: 10,
              onTap: onTap,
              currentIndex: currentIndex,
              showUnselectedLabels: true,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              backgroundColor: appColor,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Image.asset(
                      AppImage.dashboardImage,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  label: 'Dashboard',
                  backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Image.asset(
                      AppImage.dashboardImage,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  label: 'Attendance',
                  backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Image.asset(
                      AppImage.leaveImage,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  label: 'Leave',
                  backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(bottom: 7),
                    child: Image.asset(
                      AppImage.dashboardImage,
                      height: 18,
                      width: 18,
                    ),
                  ),
                  label: 'Finance',
                  backgroundColor: Color.fromRGBO(36, 54, 101, 1.0),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
