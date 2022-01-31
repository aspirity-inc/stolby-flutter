import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'difficulty_and_elevation_row.dart';

class MapCardInfo extends StatelessWidget {
  final RockEntity rock;

  const MapCardInfo({
    Key? key,
    required this.rock,
  }) : super(key: key);

  String _difficultyToStringLong(
    int difficulty,
    AppLocalizations localization,
  ) {
    switch (difficulty) {
      case 0:
        return localization.difficulty_0;
      case 1:
        return localization.difficulty_1;
      case 2:
        return localization.difficulty_2;
      case 3:
        return localization.difficulty_3;
      default:
        return "difficulty name not found";
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return SizedBox(
      height: 128,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rock.localizedName,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 24,
              color: theme.colorScheme.onBackground,
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          DifficultyAndElevationRow(
            elevation: rock.height,
            difficulty: rock.difficulty,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          SizedBox(
            width: 96,
            child: Text(
              _difficultyToStringLong(
                rock.difficulty,
                localization,
              ),
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: theme.primaryColorLight,
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(),
          ),
          GestureDetector(
            onTap: () => context.router.push(
              DetailedRockRoute(
                rockId: rock.id,
              ),
            ),
            child: Row(
              children: [
                Icon(
                  CommunityMaterialIcons.image_filter_hdr,
                  size: 20,
                  color: theme.colorScheme.secondary,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  localization.action_settings,
                  style: TextStyle(
                    fontSize: 14,
                    color: theme.colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
