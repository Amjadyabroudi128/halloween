import 'package:flutter/material.dart';

import '../homePage.dart';
import 'ghostImage.dart';

class centreImage extends StatelessWidget {
  const centreImage({
    super.key,
    required this.widget,
  });

  final MyHomePage widget;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: widget.isDarkMode ? ghostImage() : SizedBox()
    );
  }
}