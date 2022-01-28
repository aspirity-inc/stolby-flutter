import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/location/location_bloc.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';
import 'package:stolby_flutter/presentation/core/app_assets.dart';
import 'package:stolby_flutter/presentation/core/themes/app_colors.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class MapRockCardContent extends StatelessWidget {
  const MapRockCardContent({
    Key? key,
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
    final ThemeData theme = Theme.of(context);

    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, locationState) {
        return BlocBuilder<MapControlBloc, MapControlState>(
          builder: (context, state) {
            return state.clickedRock.fold(
              () => const SizedBox(),
              (rock) => Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  color: theme.scaffoldBackgroundColor,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16)),
                          child: Image.asset(
                            AppImages.getRockImage(rock.picName),
                            height: 136,
                            width: 136,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
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
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4.0,
                                      horizontal: 8.0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(24),
                                      ),
                                      color:
                                          _difficultyToColor(rock.difficulty),
                                    ),
                                    child: Text(
                                      _difficultyToString(
                                        rock.difficulty,
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
                                    color: theme.primaryColorDark,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    '${rock.height} ${localization.distance_meters}',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: theme.primaryColorLight,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
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
                              const SizedBox(
                                height: 8,
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
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        context.read<MapControlBloc>().add(
                              MapControlEvent.handleMarkerSelection(rock),
                            );
                      },
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 24.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24)),
                          color: theme.colorScheme.secondary,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Text(
                              state.setMarkerRock.fold(
                                () => localization.dialog_rock_item_mark,
                                (a) => a.id == rock.id
                                    ? localization.dialog_rock_item_hide_mark
                                    : localization.dialog_rock_item_mark,
                              ),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
