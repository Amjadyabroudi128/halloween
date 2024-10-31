import 'package:flutter/material.dart';
import 'package:halloween/consts.dart';

class spiderImage extends StatelessWidget {
  const spiderImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset( spider, width: 200,
      height: 200,);
  }
}
