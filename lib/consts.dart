

import 'package:flutter/material.dart';
// colors
Color? appBar = Colors.orangeAccent;
Color? aB = Colors.transparent;
Color mywhite = Colors.white;
// images
String spider = "images/mySpider.gif";
String ghost = "images/ghost.gif";
String light = "Turn the Lights off 👀";
String happy = "Happy Halloween";
TextStyle Tlight = TextStyle(fontSize: 27);
TextStyle Tpadding = TextStyle();
TextStyle darkmode(widget,isDarkMode) {
  return TextStyle(fontSize: 17, fontWeight: FontWeight.bold,
      color: widget.isDarkMode ? Colors.purple : Colors.black );
}
// heights
double Iheight = 200;
double Iwidth = 200;
//sizedBox
SizedBox height200 = SizedBox(height: 200,);
SizedBox height170 = SizedBox(height: 170,);