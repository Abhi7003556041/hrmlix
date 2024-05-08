import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var tabIndex = 0.obs;
  RxString titelText = "Dashboard".obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
    if (index == 0) {
      titelText.value = "Dashboard";
    } else if (index == 1) {
      titelText.value = "Attendance";
    } else if (index == 2) {
      titelText.value = "Leave";
    } else if (index == 3) {
      titelText.value = "My Salary";
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
