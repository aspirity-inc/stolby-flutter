import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class AppRouteTransitionsBuilders {
  static const RouteTransitionsBuilder zoomIn = _zoomIn;

  static Widget _zoomIn(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeThroughTransition(
      animation: animation,
      secondaryAnimation: secondaryAnimation,
      child: child,
    );
  }
}
