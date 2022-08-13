import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.redAccent;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      appBarTheme:
          const AppBarTheme(backgroundColor: primaryColor, elevation: 10),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: AppTheme.primaryColor)));
}
