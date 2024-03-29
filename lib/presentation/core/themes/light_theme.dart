import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light().copyWith(
    primary: AppColors.primary,
    secondary: AppColors.secondaryLight,
    secondaryContainer: AppColors.primary,
    onSurface: AppColors.secondaryLight,
  ),
  cardColor: AppColors.greyLight,
  scaffoldBackgroundColor: Colors.white,
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
  ),
  primaryColorLight: AppColors.greyDark,
  primaryColorDark: AppColors.primary,
);
