import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF161616),
  colorScheme: const ColorScheme.dark().copyWith(
    primary: const Color(0xFF161616),
  ),
  scaffoldBackgroundColor: const Color(0xFF262626),
);
