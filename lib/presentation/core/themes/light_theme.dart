import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light().copyWith(
    primary: AppColors.primary,
    secondary: AppColors.secondaryLight,
    secondaryVariant: AppColors.primary,
    onSurface: AppColors.secondaryLight,
  ),
  scaffoldBackgroundColor: Colors.white,
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Colors.white),
  ),
);
