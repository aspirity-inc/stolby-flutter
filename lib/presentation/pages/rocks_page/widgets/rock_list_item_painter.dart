import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class RockListItemPainter extends CustomPainter {
  final ui.Image image;

  RockListItemPainter(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawImageRect(
      image,
      Rect.fromPoints(
        Offset((image.width - size.width) / 2, 0),
        Offset(image.width - (image.width - size.width) / 2, image.height / 1),
      ),
      Rect.fromPoints(
        const Offset(0, 0),
        Offset(size.width, size.height),
      ),
      Paint(),
    );

    canvas.drawImageRect(
      image,
      Rect.fromPoints(
        Offset((image.width - size.width) / 2 + 8, size.height - 8 - 40),
        Offset(
          image.width - (image.width - size.width) / 2 - 8,
          size.height - 8,
        ),
      ),
      Rect.fromPoints(
        Offset(8, size.height - 8 - 40),
        Offset(
          size.width - 8,
          size.height - 8,
        ),
      ),
      Paint()..imageFilter = ui.ImageFilter.blur(sigmaY: 5, sigmaX: 5),
    );

    var paint = Paint()
      ..color = Colors.white54
      ..style = PaintingStyle.fill;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromPoints(
          Offset(8, size.height - 8 - 56),
          Offset(
            size.width - 8,
            size.height - 8,
          ),
        ),
        const Radius.circular(12),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
