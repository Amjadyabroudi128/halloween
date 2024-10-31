import 'package:flutter/material.dart';

import '../homePage.dart';

class SwitchHalloween extends StatelessWidget {
  const SwitchHalloween({
    super.key,
    required this.widget,
  });

  final MyHomePage widget;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: widget.isDarkMode,
      onChanged: (value) {
        widget.toggleDarkMode();
      },
      activeColor: Colors.white,
    );
  }
}
