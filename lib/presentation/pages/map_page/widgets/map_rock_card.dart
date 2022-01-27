import 'dart:math' as math;
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/application/location/location_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/domain/feature/location/entities/user_location_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';
import 'package:stolby_flutter/presentation/core/app_assets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_button.dart';

class MapRockCard extends StatelessWidget {
  final RockEntity rock;
  final bool selected;
  final VoidCallback onMarkerPressed;

  const MapRockCard({
    Key? key,
    required this.rock,
    required this.selected,
    required this.onMarkerPressed,
  }) : super(key: key);

  String _getDistance(
    UserLocationEntity user,
    RockEntity item,
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

    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    rock.localizedName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        width: 4,
                      ),
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
                        context.read<SettingsBloc>().state.geolocationEnabled
                            ? state.userLocation.isSome()
                                ? _getDistance(
                                    state.userLocation
                                        .fold(() => null, (a) => a)!,
                                    rock,
                                    localization,
                                  )
                                : localization.distance_not_defined
                            : localization.distance_not_defined,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  MapButton(
                    onPressed: onMarkerPressed,
                    icon: CupertinoIcons.location_solid,
                    text: selected
                        ? localization.dialog_rock_item_hide_mark
                        : localization.dialog_rock_item_mark,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  MapButton(
                    onPressed: () => context.router.push(DetailedRockRoute(
                      rockId: rock.id,
                    )),
                    icon: CupertinoIcons.location_solid,
                    text: localization.action_settings,
                  ),
                ],
              ),
              const Expanded(
                child: SizedBox(),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.asset(
                  AppImages.getRockImage(rock.picName),
                  height: 128,
                  width: 128,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
