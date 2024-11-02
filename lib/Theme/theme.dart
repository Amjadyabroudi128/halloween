import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData getTheme(bool isDarkMode) {
    return ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    );
  }
}
