import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../../constants/constant.dart';
import '../../utils/styles.dart';

class Cube extends RectangleComponent {
  Cube({required super.position, size, color}) {
    super.anchor = Anchor.center;
    super.size = size ?? Vector2.all(cubeSize);
    super.paint = Paint()
      ..color = color ?? Styles.colorSecondary
      ..style = PaintingStyle.fill;
  }
}
