import 'package:flutter/material.dart';
import 'package:flutter_concepts/dark_light_them/theme/my_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _theme = MyTheme.darkTheme;

  get getTheme => _theme;

  set setTheme(ThemeData theme) {
    _theme = theme;
    notifyListeners();
  }

  void toggleTheme() {
    if (_theme == MyTheme.lightTheme) {
      setTheme = MyTheme.darkTheme;
    } else {
      setTheme = MyTheme.lightTheme;
    }
  }
}
