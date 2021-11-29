import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark().copyWith(
    primary: AppColors.primary,
    secondary: AppColors.secondaryDark,
    secondaryVariant: AppColors.appbarDark,
    onSurface: AppColors.secondaryDark,
  ),
  scaffoldBackgroundColor: AppColors.backgroundDark,
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.white),
  ),
);
