import 'dart:ui';

import 'package:flutter/material.dart';

class Dot extends StatelessWidget {

  final Color color;
  final double size;

  Dot({this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: new BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
