import 'package:flutter/material.dart';

class AppTheme {
  static Color lightprimaryColor = Color(0XFFFFFF);
  static Color lightaccentColor = Color(0XFFFFFF);
  static Color lightbackgroundColor = Color(0XFFFFFF);

  static Color darkprimaryColor = Color(0XFFFFFF);
  static Color darkaccentColor = Color(0XFFFFFF);
  static Color darkbackgroundColor = Color(0XFFFFFF);

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
}
