import 'package:flutter/material.dart';

class ghostImage extends StatelessWidget {
  const ghostImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset("images/ghost.gif", width: 200, height: 200,);
  }
}