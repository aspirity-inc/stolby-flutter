import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';

class DifficultyCard extends StatelessWidget {
  final int difficulty;
  final double textSize;

  const DifficultyCard({
    Key? key,
    required this.difficulty,
    required this.textSize,
  }) : super(key: key);

  String _difficultyToString(int difficulty, AppLocalizations localization) {
    switch (difficulty) {
      case 0:
        return localization.difficulty_short_0;
      case 1:
        return localization.difficulty_short_1;
      case 2:
        return localization.difficulty_short_2;
      case 3:
        return localization.difficulty_short_3;
      default:
        return "difficulty name not found";
    }
  }

  Color _difficultyToColor(int difficulty) {
    switch (difficulty) {
      case 0:
        return AppColors.primary;
      case 1:
        return AppColors.mediumDifficulty;
      case 2:
        return AppColors.hardDifficulty;
      case 3:
        return AppColors.hardDifficulty;
      default:
        return AppColors.primary;
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        color: _difficultyToColor(difficulty),
        child: Text(
          _difficultyToString(difficulty, localization),
          style: TextStyle(
            color: Colors.white,
            fontSize: textSize,
          ),
        ),
      ),
    );
  }
}
