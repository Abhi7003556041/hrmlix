import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class ApplyLeaveScreen extends StatefulWidget {
  const ApplyLeaveScreen({super.key});

  @override
  State<ApplyLeaveScreen> createState() => _ApplyLeaveScreenState();
}

class _ApplyLeaveScreenState extends State<ApplyLeaveScreen> {
  String leaveType = "Full Day";

  TextEditingController leaveReason = TextEditingController();

  TextEditingController leaveRemark = TextEditingController();

  DateTime startDate = DateTime.now();

  DateTime endDate = DateTime.now();

  bool showCPI = false; //its should be false

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool buttonPressed = false;

  List<String> leaveTypeList = [
    'hello',
    'demo',
    'world',
    'hello',
    'demo',
    'world'
  ];

  @override
  void initState() {
    super.initState();
    getLeaveTypes();
  }

  List<String> leaveTypeItems = [];

  Future<void> getLeaveTypes() async {}

  int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  Future<void> submitLeaveRequest() async {}

  void getLeaveTypeItems() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Apply Leave"),
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            size: 18.0,
          ),
        ),
      ),
      backgroundColor: Theme.of(context).colorScheme.secondary,
      extendBody: true,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              vSpace(20),
              DropdownButtonFormField(
                icon: Icon(Icons.expand_more),

                decoration: InputDecoration(
                  border: customOutlineBorder(),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.secondary,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                  labelText: "Leave Type",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: TextStyle(
                    color: textBlue,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  focusedBorder: customOutlineFocusBorder(),
                  errorBorder: customOutlineErrorBorder(),
                  focusedErrorBorder: customOutlineErrorBorder(),
                ),
                hint: textRegular(
                  color: Theme.of(context).colorScheme.onPrimary,
                  maxLine: 1,
                  text: "Select Leave Type",
                  size: 16,
                ),

                items: leaveTypeList.map((txt) {
                  return DropdownMenuItem(
                    value: txt,
                    child: Text(txt, textAlign: TextAlign.left),
                  );
                }).toList(),
                onChanged: (newValue) {
                  print("DROPDOWN");
                },
                // onChanged: (LeaveAvailabeData? newValue) {
                //   setState(() {
                //     leaveType = newValue!;
                //   });
                // },
              ),
              vSpace(20),
              TextFormField(
                cursorColor: textBlue,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: customOutlineBorder(),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.secondary,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                  labelText: "From",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: TextStyle(
                    color: textBlue,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  focusedBorder: customOutlineFocusBorder(),
                  errorBorder: customOutlineErrorBorder(),
                  focusedErrorBorder: customOutlineErrorBorder(),
                  hintText: "MM/DD/YYYY",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      showDateTimePicker(context);
                    },
                    child: const Icon(Icons.event),
                  ),
                ),
                readOnly: true,
              ),
              vSpace(20),
              TextFormField(
                cursorColor: textBlue,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: customOutlineBorder(),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.secondary,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                  labelText: "To",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: TextStyle(
                    color: textBlue,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  focusedBorder: customOutlineFocusBorder(),
                  errorBorder: customOutlineErrorBorder(),
                  focusedErrorBorder: customOutlineErrorBorder(),
                  hintText: "MM/DD/YYYY",
                  suffixIcon: GestureDetector(
                    onTap: () {
                      showDateTimePicker(context);
                    },
                    child: const Icon(Icons.event),
                  ),
                ),
                readOnly: true,
              ),
              vSpace(20),
              TextFormField(
                readOnly: true,
                cursorColor: textBlue,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: customOutlineBorder(),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.onTertiary,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                  labelText: "Number of Days",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: TextStyle(
                    color: textBlue,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  focusedBorder: customOutlineFocusBorder(),
                  errorBorder: customOutlineErrorBorder(),
                  focusedErrorBorder: customOutlineErrorBorder(),
                ),
              ),
              vSpace(20),
              TextFormField(
                readOnly: true,
                cursorColor: textBlue,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  border: customOutlineBorder(),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.onTertiary,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                  labelText: "Remaining Leaves",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: TextStyle(
                    color: textBlue,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  focusedBorder: customOutlineFocusBorder(),
                  errorBorder: customOutlineErrorBorder(),
                  focusedErrorBorder: customOutlineErrorBorder(),
                ),
              ),
              vSpace(20),
              TextFormField(
                cursorColor: textBlue,
                textInputAction: TextInputAction.done,
                maxLines: 5,
                decoration: InputDecoration(
                  border: customOutlineBorder(),
                  filled: true,
                  fillColor: Theme.of(context).colorScheme.secondary,
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 16,
                  ),
                  labelText: "Reason",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: TextStyle(
                    color: textBlue,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  focusedBorder: customOutlineFocusBorder(),
                  errorBorder: customOutlineErrorBorder(),
                  focusedErrorBorder: customOutlineErrorBorder(),
                ),
              ),
              vSpace(30),

              GestureDetector(
                onTap: () async {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: loginButtonColor),
                  child: Center(
                    child: textRegular(
                      text: "Apply",
                      size: 15,
                      color: white,
                      maxLine: 1,
                    ),
                  ),
                ),
              ),
              // Row(
              //   children: [
              //     textBold(
              //       text: "Select Leave Type",
              //       size: 16,
              //       color:  black,
              //     ),
              //     textBold(color:  red, maxLine: 1, size: 18, text: "*")
              //   ],
              // ),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 10),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(
              //       color:  borderColor,
              //       width: 2,
              //     ),
              //   ),
              //   child: DropdownButtonFormField(
              //     hint: textRegular(
              //       color:  black,
              //       maxLine: 1,
              //       text: "Select Leave Type",
              //       size: 16,
              //     ),
              //     items: leaveTypeList.map((txt) {
              //       return DropdownMenuItem(
              //         value: txt,
              //         child: Text(txt, textAlign: TextAlign.left),
              //       );
              //     }).toList(),
              //     onChanged: (newValue) {},
              //     // onChanged: (LeaveAvailabeData? newValue) {
              //     //   setState(() {
              //     //     leaveType = newValue!;
              //     //   });
              //     // },
              //   ),
              // ),
              // vSpace(10),
              // Row(
              //   children: [
              //     textBold(
              //       text: "Start Date",
              //       size: 16,
              //       color:  black,
              //     ),
              //     textBold(color:  red, maxLine: 1, size: 18, text: "*")
              //   ],
              // ),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 10),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(
              //       color: Colors.grey,
              //       width: 2,
              //     ),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       textRegular(
              //         text:
              //             "${startDate.day}-${startDate.month}-${startDate.year}",
              //         color:  black,
              //         size: 17,
              //       ),
              //       IconButton(
              //         onPressed: () {
              //           showStartDate();
              //         },
              //         icon: const Icon(Icons.event),
              //       ),
              //     ],
              //   ),
              // ),
              // vSpace(10),
              // Row(
              //   children: [
              //     textBold(
              //       text: "End Date",
              //       size: 16,
              //       color:  black,
              //     ),
              //     textBold(color:  red, maxLine: 1, size: 18, text: "*")
              //   ],
              // ),
              // Container(
              //   padding: const EdgeInsets.symmetric(horizontal: 10),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     border: Border.all(
              //       color:  Theme.of(context).colorScheme.onPrimary,
              //       width: 2,
              //     ),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       textRegular(
              //         text: "${endDate.day}-${endDate.month}-${endDate.year}",
              //         color:  black,
              //         size: 17,
              //       ),
              //       IconButton(
              //         onPressed: () {
              //           showEndDate();
              //         },
              //         icon: const Icon(Icons.event),
              //       ),
              //     ],
              //   ),
              // ),
              // vSpace(10),
              // Row(
              //   children: [
              //     textBold(
              //       text: "Leave Reason",
              //       size: 16,
              //       color:  black,
              //     ),
              //     textBold(color:  red, maxLine: 1, size: 18, text: "*")
              //   ],
              // ),
              // Stack(
              //   children: [
              //     Container(
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         border: Border.all(
              //           color:  borderColor,
              //           width: 2,
              //         ),
              //       ),
              //     ),
              //     TextFormField(
              //       textInputAction: TextInputAction.done,
              //       controller: leaveReason,
              //       maxLines: 10,
              //       decoration: InputDecoration(
              //         filled: true,
              //         fillColor:  white,
              //         hintText: "Leave Reason",
              //         contentPadding: const EdgeInsets.symmetric(
              //           horizontal: 15,
              //           vertical: 10,
              //         ),
              //         enabledBorder: customOutlineBorder(),
              //         focusedBorder: customOutlineBorder(),
              //         errorBorder: customOutlineBorder(),
              //         focusedErrorBorder: customOutlineBorder(),
              //       ),
              //     ),
              //   ],
              // ),
              // vSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
