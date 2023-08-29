import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark().copyWith(
    primary: AppColors.primary,
    secondary: AppColors.secondaryDark,
    secondaryContainer: AppColors.appbarDark,
    onSurface: AppColors.secondaryDark,
  ),
  cardColor: AppColors.greyDark,
  scaffoldBackgroundColor: AppColors.backgroundDark,
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white),
  ),
  primaryColorLight: Colors.white,
  primaryColorDark: AppColors.secondaryDark,
);
