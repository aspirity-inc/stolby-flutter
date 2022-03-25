import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class RockListItemPainter extends CustomPainter {
  final ui.Image image;

  RockListItemPainter(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white24
      ..style = PaintingStyle.fill;

    canvas
      ..drawImageRect(
        image,
        Rect.fromPoints(
          Offset((image.width - size.width) / 2, 0),
          Offset(
            image.width - (image.width - size.width) / 2,
            image.height / 1,
          ),
        ),
        Rect.fromPoints(
          Offset.zero,
          Offset(size.width, size.height),
        ),
        Paint(),
      )
      ..drawImageRect(
        image,
        Rect.fromPoints(
          Offset((image.width - size.width) / 2, size.height - 48),
          Offset(
            image.width - (image.width - size.width) / 2,
            size.height - 16,
          ),
        ),
        Rect.fromPoints(
          Offset(0, size.height - 56),
          Offset(size.width, size.height),
        ),
        Paint()
          ..imageFilter = ui.ImageFilter.blur(
            sigmaY: 4,
            sigmaX: 4,
            tileMode: TileMode.decal,
          ),
      )
      ..drawRRect(
        RRect.fromRectAndCorners(
          Rect.fromPoints(
            Offset(0, size.height - 56),
            Offset(size.width, size.height),
          ),
          bottomLeft: const Radius.circular(12),
          bottomRight: const Radius.circular(12),
        ),
        paint,
      );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
