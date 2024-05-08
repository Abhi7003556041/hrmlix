import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/constants/color.dart';
import 'package:hrmlix/constants/constant.dart';
import 'package:hrmlix/router/navrouter_constants.dart';
import 'package:hrmlix/widgets/common_widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValidationUser();
  }

  Future getValidationUser() async {
    await Future.delayed(const Duration(seconds: 3), () async {
      Get.offAllNamed(login);
      // appointmentControllerInstance.getAppointments();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      body: Center(
        child: Container(
          width: fullWidth(context) * 0.50,
          height: fullHeight(context) * 0.07,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImage.appLogo), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
