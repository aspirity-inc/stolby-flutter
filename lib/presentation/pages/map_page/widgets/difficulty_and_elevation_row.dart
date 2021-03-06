import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';

class DifficultyAndElevationRow extends StatelessWidget {
  final int difficulty;
  final int elevation;

  const DifficultyAndElevationRow({
    required this.difficulty,
    required this.elevation,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(24),
            ),
            color: _difficultyToColor(difficulty),
          ),
          child: Text(
            _difficultyToString(
              difficulty,
              localization,
            ),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.trending_up,
          color: _difficultyToColor(difficulty),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          '$elevation ${localization?.distance_meters}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
      ],
    );
  }

  String _difficultyToString(int difficulty, AppLocalizations? localization) {
    switch (difficulty) {
      case 0:
        return localization?.difficulty_short_0 ?? '';
      case 1:
        return localization?.difficulty_short_1 ?? '';
      case 2:
        return localization?.difficulty_short_2 ?? '';
      case 3:
        return localization?.difficulty_short_3 ?? '';
      default:
        return 'difficulty name not found';
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
}
