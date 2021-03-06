import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DistanceToRock extends StatelessWidget {
  final double? distance;

  const DistanceToRock({
    required this.distance,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    final color = Theme.of(context).primaryColorDark;

    return Column(
      children: [
        Icon(
          CupertinoIcons.location_fill,
          size: 24,
          color: color,
        ),
        const SizedBox(
          height: 16,
        ),
        RichText(
          text: TextSpan(
            text: _distanceToRock(
              distance,
              localization,
            ),
            style: TextStyle(
              fontSize: 24,
              color: color.withOpacity(0.6),
              fontWeight: FontWeight.w600,
            ),
            children: <TextSpan>[
              TextSpan(
                text: distance != null
                    ? (distance ?? 0) >= 1000
                        ? localization?.distance_kilometers
                        : localization?.distance_meters
                    : '',
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

  String _distanceToRock(double? distance, AppLocalizations? localization) =>
      distance != null
          ? distance >= 1000
              ? '${(distance / 1000).toStringAsFixed(2).replaceAll('.', ',')} '
              : '${distance.toStringAsFixed(0)} '
          : localization?.distance_not_defined ?? '';
}
