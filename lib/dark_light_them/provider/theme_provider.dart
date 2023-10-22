import 'package:flutter/material.dart';
import 'package:flutter_concepts/dark_light_them/theme/my_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _theme = MyTheme.lightTheme;

  get getTheme {
    return _theme;
  }

  set setTheme(theme) {
    _theme = theme;
    notifyListeners();
  }

  void toggleTheme() {
    if (_theme == MyTheme.lightTheme) {
      _theme = MyTheme.darkTheme;
    } else {
      _theme = MyTheme.lightTheme;
    }
  }
}
