import 'package:flutter/material.dart';

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
        backgroundColor: widget.isDarkMode ? Colors.orangeAccent : Colors.transparent,
        actions: [
          Switch(
            value: widget.isDarkMode,
            onChanged: (value) {
              widget.toggleDarkMode();
            },
            activeColor: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Text(widget.isDarkMode ?  "" : "Turn the Lights off 👀 ", style: TextStyle(fontSize: 27), ),
          ],
        ),
      ),
    );
  }
}