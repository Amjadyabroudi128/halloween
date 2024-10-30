import 'package:flutter/material.dart';

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
      theme: ThemeData(
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        isDarkMode: isDarkMode,
        toggleDarkMode: toggleButton,
      ),
    );
  }
}

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
        backgroundColor: Colors.orangeAccent,
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
          children: const <Widget>[
            Text("Toggle theme using the switch in the app bar!"),
          ],
        ),
      ),
    );
  }
}
