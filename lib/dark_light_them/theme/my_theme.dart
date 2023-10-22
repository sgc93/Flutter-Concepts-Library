import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Colors.grey.shade900,
      secondary: Colors.grey.shade400,
      background: Colors.grey.shade200,
    ),
  );
}
