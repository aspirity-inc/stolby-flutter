import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark().copyWith(
    primary: AppColors.primaryDark,
    secondary: AppColors.secondaryColor,
  ),
  scaffoldBackgroundColor: AppColors.backgroundDark,
);
