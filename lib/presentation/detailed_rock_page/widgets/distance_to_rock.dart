import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DistanceToRock extends StatelessWidget {
  final double? distance;

  const DistanceToRock({
    Key? key,
    required this.distance,
  }) : super(key: key);

  String _distanceToRock(double? distance, AppLocalizations localization) {
    return distance != null
        ? distance >= 1000
            ? (distance / 1000).toStringAsFixed(2).replaceAll('.', ',')
            : distance.toStringAsFixed(0)
        : localization.distance_not_defined;
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return Column(
      children: [
        Icon(
          CommunityMaterialIcons.map_marker_distance,
          size: 36,
          color: Theme.of(context).colorScheme.onBackground,
        ),
        SizedBox(
          height: distance != null ? 8 : 16,
        ),
        Text(
          _distanceToRock(
            distance,
            localization,
          ),
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          distance != null
              ? distance! >= 1000
                  ? localization.distance_kilometers
                  : localization.distance_meters
              : '',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
