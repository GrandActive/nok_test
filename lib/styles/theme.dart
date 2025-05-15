import 'package:flutter/material.dart';

import 'button_color.dart';

final appTheme = ThemeData(
  useMaterial3: true,
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      backgroundColor: ButtonColor(),
      textStyle: const WidgetStatePropertyAll(
        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    ),
  ),
  outlinedButtonTheme: const OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(
        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    ),
  ),
  textButtonTheme: const TextButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(
        TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      ),
    ),
  ),
  radioTheme: const RadioThemeData(fillColor: WidgetStatePropertyAll(Color(0xff277ADB))),
  checkboxTheme: const CheckboxThemeData(fillColor: WidgetStatePropertyAll(Color(0xff277ADB))),
  appBarTheme: const AppBarTheme(color: Color(0xff277ADB), foregroundColor: Colors.white),
  colorSchemeSeed: const Color(0x00277adb),
  iconTheme: const IconThemeData(
    color: Color(0xFF464646),
  ),
);
