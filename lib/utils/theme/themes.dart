import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hrmlix/constants/color.dart';

class AppThemes {
  static const lightThemeFont = "Outfit", darkThemeFont = "Outfit";

  // light theme
  static final lightTheme = ThemeData(
    dialogBackgroundColor: dialogBackgroundColorLight,
    canvasColor: white,
    dividerColor: transparentColor,
    primaryColor: lightThemeColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: scaffoldBackgroundColorLight,
    useMaterial3: true,
    fontFamily: lightThemeFont,
    switchTheme: SwitchThemeData(
      thumbColor:
          MaterialStateProperty.resolveWith<Color>((states) => lightThemeColor),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: false,
      backgroundColor: appbarColorLight,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: appBarTitleColorLight,
        fontSize: 18, //20
      ),
      iconTheme: IconThemeData(color: appTextColorLight),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: lightThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: lightThemeFont,
      ),
      headlineMedium: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: lightThemeFont,
      ),
      headlineSmall: TextStyle(
        color: white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: lightThemeFont,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: primaryLight, // USED IN PRIMARY TEXT COLOR
      onPrimary: onPrimaryLight, // USED IN SUBTITLE TEXT COLOR
      secondary: secondaryLight, // USED IN CONTAINER COLOR
      onSecondary: onSecondaryLight,
      tertiary: tertiaryLight, // USED IN DIVIDER
      onTertiary: onTertiaryLight, //USED IN BORDER
      background: backgroundLight,
      onBackground: onBackgroundLight,
      surface: surfaceLight,
      onSurface: onSurfaceLight,
      error: red,
      onError: white,
      brightness: Brightness.light,
      primaryContainer: primaryContainerLight,
      secondaryContainer: secondaryContainerLight,
    ),
  );

  // dark theme
  static final darkTheme = ThemeData(
    dialogBackgroundColor: dialogBackgroundColorDark,
    primaryColor: darkThemeColor,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: scaffoldBackgroundColorDark,
    dividerColor: tertiaryDark,
    useMaterial3: true,
    fontFamily: darkThemeFont,
    switchTheme: SwitchThemeData(
      trackColor:
          MaterialStateProperty.resolveWith<Color>((states) => darkThemeColor),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: false,
      backgroundColor: appbarColorDark,
      scrolledUnderElevation: 0,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        color: white,
        fontSize: 18, //20
      ),
      iconTheme: IconThemeData(color: appTextColorDark),
      elevation: 0,
      actionsIconTheme: IconThemeData(color: darkThemeColor),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: appColor,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    canvasColor: darkThemeColor,
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: darkThemeFont,
      ),
      headlineMedium: TextStyle(
        color: white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: darkThemeFont,
      ),
      headlineSmall: TextStyle(
        color: white,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: darkThemeFont,
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: primaryDark, // USED IN PRIMARY TEXT COLOR
      onPrimary: onPrimaryDark, // USED IN SUBTITLE TEXT COLOR
      secondary: secondaryDark,
      onSecondary: onSecondaryDark,
      tertiary: tertiaryDark, // USED IN DIVIDER
      onTertiary: onTertiaryDark, //USED IN BORDER
      background: backgroundDark,
      onBackground: onBackgroundDark,
      surface: surfaceDark,
      onSurface: onSurfaceDark,
      error: red,
      onError: white,
      brightness: Brightness.dark,
      primaryContainer: primaryContainerDark,
      secondaryContainer: secondaryContainerDark,
    ),
  );
}
