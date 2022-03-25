import 'package:auto_route/auto_route.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/difficulty_and_elevation_row.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';

class MapCardInfo extends StatelessWidget {
  final RockEntity rock;

  const MapCardInfo({
    required this.rock,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Expanded(
      child: SizedBox(
        height: 136,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                rock.localizedName,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: theme.colorScheme.onBackground,
                ),
              ),
            ),
            DifficultyAndElevationRow(
              elevation: rock.height,
              difficulty: rock.difficulty,
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
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: theme.primaryColorLight,
                ),
              ),
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
                    localization?.action_settings ?? '',
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
      ),
    );
  }

  String _difficultyToStringLong(
    int difficulty,
    AppLocalizations? localization,
  ) {
    switch (difficulty) {
      case 0:
        return localization?.difficulty_0 ?? '';
      case 1:
        return localization?.difficulty_1 ?? '';
      case 2:
        return localization?.difficulty_2 ?? '';
      case 3:
        return localization?.difficulty_3 ?? '';
      default:
        return 'difficulty name not found';
    }
  }
}
