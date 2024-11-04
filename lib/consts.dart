

import 'package:flutter/material.dart';
// colors
Color? appBar = Colors.orangeAccent;
Color? aB = Colors.transparent;
Color mywhite = Colors.white;
Color dark = Colors.black;
Color hPurple = Colors.purple;
// images
String spider = "images/mySpider.gif";
String ghost = "images/ghost.gif";
String light = "Turn the Lights off 👀";
String happy = "Happy Halloween";
TextStyle Tlight = TextStyle(fontSize: 27);
TextStyle Tpadding = TextStyle();
TextStyle darkmode(widget,isDarkMode) {
  return TextStyle(fontSize: 17, fontWeight: FontWeight.bold,
      color: widget.isDarkMode ? hPurple : dark );
}
// heights
double Iheight = 200;
double Iwidth = 200;
//sizedBox
SizedBox height200 = SizedBox(height: 200,);
SizedBox height170 = SizedBox(height: 170,);
EdgeInsetsGeometry myPad = EdgeInsets.all(9);
EdgeInsetsGeometry AB = const EdgeInsets.only(left: 2, top: 29,);