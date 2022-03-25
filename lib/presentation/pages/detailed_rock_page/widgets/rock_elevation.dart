import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RockElevation extends StatelessWidget {
  final int height;

  const RockElevation({
    required this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    final color = Theme.of(context).primaryColorDark;

    return Column(
      children: [
        Icon(
          Icons.trending_up,
          size: 36,
          color: color,
        ),
        const SizedBox(
          height: 8,
        ),
        RichText(
          text: TextSpan(
            text: '$height ',
            style: TextStyle(
              fontSize: 24,
              color: color.withOpacity(0.6),
              fontWeight: FontWeight.w600,
            ),
            children: <TextSpan>[
              TextSpan(
                text: localization?.distance_meters,
                style: TextStyle(
                  fontSize: 20,
                  color: color.withOpacity(0.6),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
