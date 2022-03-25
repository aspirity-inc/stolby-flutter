import 'dart:math' as math;

import 'package:auto_route/auto_route.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/application/rock_list/rock_list_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/domain/feature/location/entities/user_location_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';
import 'package:stolby_flutter/presentation/pages/rocks_page/widgets/rock_list_item_painter.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:stolby_flutter/presentation/widgets/difficulty_card.dart';

class RockListItem extends StatelessWidget {
  final int index;
  final RockEntity item;
  final UserLocationEntity? location;

  const RockListItem({
    required this.item,
    required this.index,
    Key? key,
    this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    final locationObj = location;

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
                left: index.isEven ? 16 : 8,
                right: index.isEven ? 8 : 16,
                bottom: 16,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  BlocBuilder<RockListBloc, RockListState>(
                    buildWhen: (p, c) => p.rockPhotos != c.rockPhotos,
                    builder: (context, state) => ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      child: CustomPaint(
                        painter: RockListItemPainter(
                          state.rockPhotos
                              .firstWhere(
                                (element) => element.imageName == item.picName,
                              )
                              .image,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                item.localizedName,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Transform.rotate(
                                    angle: math.pi * 3 / 12,
                                    child: const Icon(
                                      CommunityMaterialIcons.navigation,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  BlocBuilder<SettingsBloc, SettingsState>(
                                    buildWhen: (p, c) =>
                                        p.geolocationEnabled !=
                                        c.geolocationEnabled,
                                    builder: (context, settingsState) => Text(
                                      (settingsState.geolocationEnabled &&
                                                  locationObj != null
                                              ? _getDistance(
                                                  locationObj,
                                                  item,
                                                  localization,
                                                )
                                              : localization
                                                  ?.distance_not_defined) ??
                                          '',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
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
                  Positioned(
                    top: 8,
                    right: 8,
                    child: DifficultyCard(
                      difficulty: item.difficulty,
                      textSize: 12,
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

  String _getDistance(
    UserLocationEntity user,
    RockEntity item,
    AppLocalizations? localization,
  ) {
    const distance = Distance();
    final strDistance = distance.distance(
      LatLng(user.latitude, user.longitude),
      LatLng(item.latitude, item.longitude),
    );

    return strDistance >= 1000
        ? '${(strDistance / 1000).toStringAsFixed(2)} '
            '${localization?.distance_kilometers}'
        : '${strDistance.ceil()} ${localization?.distance_meters}';
  }
}
