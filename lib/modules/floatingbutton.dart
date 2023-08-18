import 'package:flutter/material.dart';

class MyFloatingButton extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.only();

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    var p = Path();
    p.moveTo(rect.left + rect.width / 2, rect.top);
    p.lineTo(rect.right, rect.top + rect.height / 2);
    p.lineTo(rect.left + rect.width / 2, rect.bottom);
    p.lineTo(rect.left, rect.top + rect.height / 2);
    return p;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    throw UnimplementedError();
  }
}
