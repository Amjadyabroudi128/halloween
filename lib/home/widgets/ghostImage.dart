import 'package:flutter/material.dart';
import 'package:halloween/consts.dart';

class ghostImage extends StatelessWidget {
  const ghostImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset( ghost, width: 200, height: 200,);
  }
}