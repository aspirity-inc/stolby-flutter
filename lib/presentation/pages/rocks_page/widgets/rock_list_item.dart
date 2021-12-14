import 'dart:ui';
import 'dart:math' as math;
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/domain/feature/location/entities/user_location_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_list_item_entity.dart';

class RockListItem extends StatelessWidget {
  final int index;
  final RockListItemEntity item;
  final UserLocationEntity? location;

  const RockListItem({
    Key? key,
    this.location,
    required this.item,
    required this.index,
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

  String _getDistance(
    UserLocationEntity user,
    RockListItemEntity item,
    AppLocalizations localization,
  ) {
    const distance = Distance();
    final strDistance = distance.distance(
      LatLng(user.latitude, user.longitude),
      LatLng(item.latitude, item.longitude),
    );

    return strDistance >= 1000
        ? "${(strDistance / 1000).toStringAsFixed(2)} ${localization.distance_kilometers}"
        : "${strDistance.ceil()} ${localization.distance_meters}";
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return AnimationConfiguration.staggeredGrid(
      position: index,
      columnCount: index % 2,
      duration: const Duration(
        milliseconds: 500,
      ),
      child: SlideAnimation(
        verticalOffset: 100,
        child: FadeInAnimation(
          child: InkWell(
            onTap: () => context.router.push(
              DetailedRockRoute(rockId: index),
            ),
            child: Container(
              height: 188,
              margin: EdgeInsets.only(
                left: index % 2 == 0 ? 16 : 8,
                right: index % 2 == 0 ? 8 : 16,
                bottom: 16.0,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Image.asset(
                      "assets/images/" + item.picName + ".jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 16.0,
                          ),
                          color: Colors.white54,
                          child: Text(
                            _difficultyToString(item.difficulty, localization),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 8,
                    right: 8,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 5.0,
                          sigmaY: 5.0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 8.0,
                          ),
                          color: Colors.white54,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.localizedName,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              Row(
                                children: [
                                  Transform.rotate(
                                    angle: 3 * math.pi / 12,
                                    child: const Icon(
                                      CommunityMaterialIcons.navigation,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    context
                                            .read<SettingsBloc>()
                                            .state
                                            .geolocationEnabled
                                        ? location != null
                                            ? _getDistance(
                                                location!,
                                                item,
                                                localization,
                                              )
                                            : localization.distance_not_defined
                                        : localization.distance_not_defined,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
/*

 */
