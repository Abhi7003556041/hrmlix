import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/controller/bottom_navigation_controller.dart';
import 'package:hrmlix/view/finance/tab_screen/advance_tab.dart';
import 'package:hrmlix/view/finance/tab_screen/extra_earning_tab.dart';
import 'package:hrmlix/view/finance/tab_screen/my_salary_tab.dart';
import 'package:hrmlix/view/finance/tab_screen/payslip_tap.dart';
import 'package:hrmlix/view/finance/tab_screen/reimbursement_tab.dart';
import 'package:hrmlix/view/finance/tab_screen/tds_tab.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class Finance extends StatefulWidget {
  const Finance({super.key});

  @override
  State<Finance> createState() => _FinanceState();
}

class _FinanceState extends State<Finance> with TickerProviderStateMixin {
  late final TabController _tabController;
  final BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController(), permanent: false);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 6,
      vsync: this,
    );
    _tabController.addListener(_handleTabSelection);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabSelection() {
    _getAppBarTitle();
    setState(
        () {}); // Update the state to rebuild the AppBar with the new title
  }

  _getAppBarTitle() {
    switch (_tabController.index) {
      case 0:
        bottomNavigationController.titelText.value = 'My Salary';
      case 1:
        bottomNavigationController.titelText.value = 'Payslip';
      case 2:
        bottomNavigationController.titelText.value = 'Advance';
      case 3:
        bottomNavigationController.titelText.value = 'Reimbursement';
      case 4:
        bottomNavigationController.titelText.value = 'Extra Earning';
      case 5:
        bottomNavigationController.titelText.value = 'TDS';
      default:
        bottomNavigationController.titelText.value = 'Finance';
    }
  }

  @override
  Widget build(BuildContext context) {
    return

        // SingleChildScrollView(
        //   child:

        Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      height: fullHeight(context) * 0.9,
      width: fullWidth(context),
      child: Column(
        children: <Widget>[
          Container(
            height: 1.5,
            width: fullWidth(context),
            color: Theme.of(context).colorScheme.tertiary,
          ),
          Container(
            height: fullHeight(context) * 0.07,
            color: Theme.of(context).colorScheme.secondary,
            child: TabBar(
              tabAlignment: TabAlignment.start,
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              labelColor: textBlue,
              unselectedLabelColor: appTextColor,
              indicatorSize: TabBarIndicatorSize.tab,
              controller: _tabController,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  text: 'My Salary',
                ),
                Tab(
                  text: 'Payslip',
                ),
                Tab(
                  text: 'Advance',
                ),
                Tab(
                  text: 'Reimbursement',
                ),
                Tab(
                  text: 'Extra Earning',
                ),
                Tab(
                  text: 'TDS',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                MySalaryTab(),
                PayslipTab(),
                AdvanceTab(),
                ReimbursementTab(),
                ExtraEarningTab(),
                TDSTab(),
              ],
            ),
          ),
        ],
      ),
      // ),
    );
  }
}
