import 'package:flutter/material.dart';

class CurvedContainerPaint extends CustomPainter {
  final Color color;

  CurvedContainerPaint({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    var x = 0.0;
    var startFromTop = false;
    final increment = size.width / 2;
    final path = Path()..moveTo(0, 32);

    while (x < size.width) {
      if (startFromTop) {
        path
          ..lineTo(x, 0)
          ..cubicTo(
            x + increment / 2,
            0,
            x + increment / 2,
            size.height - 32,
            x + increment,
            size.height - 32,
          );
      } else {
        path
          ..lineTo(
            x,
            size.height - 32,
          )
          ..cubicTo(
            x + increment / 2,
            size.height - 32,
            x + increment / 2,
            0,
            x + increment,
            0,
          );
      }
      x += increment;
      startFromTop = !startFromTop;
    }
    path
      ..lineTo(0, size.height - 32)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
