import 'package:flutter/material.dart';
import 'package:halloween/Theme/theme.dart';

import 'home/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleButton() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.getTheme(isDarkMode),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        isDarkMode: isDarkMode,
        toggleDarkMode: toggleButton,
      ),
    );
  }
}


