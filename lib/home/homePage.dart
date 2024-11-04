import 'package:flutter/material.dart';
import 'package:halloween/consts.dart';
import 'package:halloween/home/widgets/SwitchWidget.dart';
import 'package:halloween/home/widgets/centreImage.dart';
import 'package:halloween/home/widgets/spiderImage.dart';
class MyHomePage extends StatefulWidget {
  final bool isDarkMode;
  final Function toggleDarkMode;
  const MyHomePage({
    super.key,
    required this.isDarkMode,
    required this.toggleDarkMode,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 2, top: 25,),
          child: Column(
            children: [
              Container(
                color: widget.isDarkMode ? appBar : aB,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(happy, style: darkmode(widget, widget.isDarkMode)),
                    ),
                    Spacer(),
                    SwitchHalloween(widget: widget),
                  ],
                ),
              ),
              widget.isDarkMode ? spiderImage() : SizedBox(),
              height170,
              centreImage(widget: widget),
              height200,
              widget.isDarkMode ? SizedBox() : Text(
                light,
                style: Tlight,
              )
            ],
          ),
        ),
      ),
    );
  }
}






