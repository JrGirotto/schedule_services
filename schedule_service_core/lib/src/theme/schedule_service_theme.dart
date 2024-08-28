import 'package:flutter/material.dart';

final class ScheduleServiceTheme {
  static const orangeColor = Color.fromARGB(255, 255, 145, 0);
  static const lightOrangeColor = Color(0xFFFDF0E9);
  static const blueColor = Color.fromARGB(255, 48, 46, 214);
  static const lightGrayColor = Color(0xFFFFEFE9);

  static final _defaultInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: lightOrangeColor),
  );

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: lightOrangeColor),
    useMaterial3: true,
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: lightOrangeColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: lightOrangeColor,
      labelStyle: const TextStyle(
        fontSize: 16,
        color: orangeColor,
        fontWeight: FontWeight.w700,
      ),
      floatingLabelStyle:
          const TextStyle(color: blueColor, fontWeight: FontWeight.w600),
      enabledBorder: _defaultInputBorder,
      focusedBorder: _defaultInputBorder,
      errorBorder: _defaultInputBorder.copyWith(
        borderSide: const BorderSide(color: Colors.red),
      ),
      border: _defaultInputBorder,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: blueColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: blueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
          fontFamily: 'Monserrat',
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
  static final darkTheme = lightTheme;

  static const titleStyle =
      TextStyle(color: blueColor, fontSize: 32, fontWeight: FontWeight.w900);

  static const titleSmallStyle =
      TextStyle(color: blueColor, fontSize: 24, fontWeight: FontWeight.w900);

  static const subTitleStyle =
      TextStyle(color: blueColor, fontSize: 18, fontWeight: FontWeight.w500);
}
