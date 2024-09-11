import 'package:bloc_project/core/configs/themes/app.colours.dart';
import 'package:flutter/material.dart';

class AppTheme {

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Satoshi',
    scaffoldBackgroundColor: AppColours.lightMode,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColours.primary,
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      )
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Satoshi',
    scaffoldBackgroundColor: AppColours.darkMode,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColours.primary,
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      )
    ),
  );
}