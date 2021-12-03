import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RockElevation extends StatelessWidget {
  final int height;

  const RockElevation({
    Key? key,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return Column(
      children: [
        const Icon(
          Icons.trending_up,
          color: Colors.black,
          size: 36,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '$height',
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          localization.rock_screen_text_height_meters,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
