import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.redAccent;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    appBarTheme:
        const AppBarTheme(backgroundColor: primaryColor, elevation: 10),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: AppTheme.primaryColor)),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor, elevation: 10),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      primary: primaryColor,
      shape: const StadiumBorder(),
      elevation: 10,
    )),
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primaryColor),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
    ),
  );
}
