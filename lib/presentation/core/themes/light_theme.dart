import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light().copyWith(
    primary: AppColors.primaryLight,
    secondary: AppColors.secondaryColor,
  ),
  scaffoldBackgroundColor: Colors.white,
);
