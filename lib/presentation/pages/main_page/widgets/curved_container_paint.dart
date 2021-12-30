import 'package:flutter/material.dart';

class CurvedContainerPaint extends CustomPainter {
  final Color color;

  CurvedContainerPaint({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = color;
    double x = 0;
    bool startFromTop = false;
    double increment = size.width / 2;
    Path path = Path()..moveTo(0, 32);

    while (x < size.width) {
      if (startFromTop) {
        path.lineTo(x, 0);
        path.cubicTo(
          x + increment / 2,
          0,
          x + increment / 2,
          size.height - 32,
          x + increment,
          size.height - 32,
        );
      } else {
        path.lineTo(
          x,
          size.height - 32,
        );
        path.cubicTo(
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
