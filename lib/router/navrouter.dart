import 'package:get/get.dart';
import 'package:hrmlix/view/bottom_navigation/bottom_navigation.dart';
import 'package:hrmlix/view/dashboard/dashboard.dart';
import 'package:hrmlix/view/dashboard/widget/clock_in_full_widget.dart';
import 'package:hrmlix/view/finance/widget/80C/80c_investments_details.dart';
import 'package:hrmlix/view/finance/widget/80C/add_80cc_widget.dart';
import 'package:hrmlix/view/finance/widget/reimbursement_history.dart';
import 'package:hrmlix/view/leave/apply_leave_screen.dart';
import 'package:hrmlix/view/leave/widget/leave_history.dart';
import 'package:hrmlix/view/profile/login.dart';
import 'package:hrmlix/view/splash_screen.dart';
import 'navrouter_constants.dart';

class NavRouter {
  static final generateRoute = [
    GetPage(name: "/", page: () => SplashScreen()),
    GetPage(name: login, page: () => Login()),
    GetPage(name: bottomNavigation, page: () => BottomNavigation()),
    GetPage(name: dashboard, page: () => Dashboard()),
    GetPage(name: clockInCard, page: () => ClockInFullWidget()),
    GetPage(name: investments80C, page: () => Investments80CDetails()),
    GetPage(name: addInvestments80C, page: () => AddInvestments80CC()),
    GetPage(name: leaveHistory, page: () => LeaveHistory()),
    GetPage(name: applyLeave, page: () => ApplyLeaveScreen()),
    GetPage(name: reimbursementHistory, page: () => ReimbursementHistory()),
  ];
}
