import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color lightbackgroundColor = const Color(0XFFFFFFFFF);
  static Color lightprimaryColor = const Color(0XFFFFFFFFF);
  static Color lightaccentColor = const Color(0XFFF2076bd);

  static Color darkbackgroundColor = const Color(0XFF0000000);
  static Color darkprimaryColor = const Color(0XFF0000000);
  static Color darkaccentColor = const Color(0XFFF2076bd);

  const AppTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: lightprimaryColor,
    accentColor: lightaccentColor,
    backgroundColor: lightbackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkprimaryColor,
    accentColor: darkaccentColor,
    backgroundColor: darkbackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static Brightness get currentSystemBrightness =>
      SchedulerBinding.instance.window.platformBrightness;

  static setStatusAndNavBarColor(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: themeMode == ThemeMode.light
            ? lightbackgroundColor
            : darkbackgroundColor,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }
}
