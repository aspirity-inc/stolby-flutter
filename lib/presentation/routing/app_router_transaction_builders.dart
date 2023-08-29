import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class AppTransitionBuilders {
  static const RouteTransitionsBuilder zoomIn = _zoomIn;

  static Widget _zoomIn(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) =>
      FadeThroughTransition(
        animation: animation,
        secondaryAnimation: secondaryAnimation,
        child: child,
      );
}
