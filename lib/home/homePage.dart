import 'package:flutter/material.dart';
import 'package:halloween/consts.dart';
import 'package:halloween/home/widgets/SwitchWidget.dart';
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
      appBar: AppBar(
        title: const Text("Happy Halloween"),
        backgroundColor: widget.isDarkMode ? appBar : aB,
        actions: [
          SwitchHalloween(widget: widget),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            widget.isDarkMode ? spiderImage() : SizedBox(),
            SizedBox(height: 170,),
            Center(
                child: widget.isDarkMode ? Image.asset("images/ghost.gif", width: 200, height: 200,) : SizedBox()
            ),
            SizedBox(height: 200,),
            widget.isDarkMode ? SizedBox() : Text(
              "Turn the Lights off 👀",
              style: TextStyle(fontSize: 27),
            )
          ],
        ),
      ),
    );
  }
}


