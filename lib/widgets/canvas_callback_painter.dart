import 'package:flutter/rendering.dart';

typedef PaintCallback = void Function(Canvas canvas, Size size);

class CustomPainterCanvasCallback extends CustomPainter {
  final PaintCallback onPaint;

  const CustomPainterCanvasCallback({required this.onPaint});

  @override
  void paint(Canvas canvas, Size size) => onPaint.call(canvas, size);

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => oldDelegate != this;
}
