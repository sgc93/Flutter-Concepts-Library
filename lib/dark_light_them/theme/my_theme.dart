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

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.highContrastDark(
      primary: Colors.grey.shade400,
      secondary: Colors.grey.shade900,
      background: Colors.grey.shade900,
    ),
  );
}
