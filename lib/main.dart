import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrmlix/utils/theme/theme_controller.dart';
import 'package:hrmlix/router/navrouter.dart';
import 'package:hrmlix/utils/theme/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final ThemeController _themeController = Get.put(ThemeController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: _themeController,
      builder: (_) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'HRMlix',
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: ThemeMode.system,
          initialRoute: '/',
          getPages: NavRouter.generateRoute,
        );
      },
    );
  }
}
