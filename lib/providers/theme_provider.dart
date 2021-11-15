import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool isDark = false;

  void toggleThemeMode(bool val) {
    if (val) {
      isDark = true;
    } else {
      isDark = false;
    }
    notifyListeners();
  }
}
