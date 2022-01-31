import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/location/location_bloc.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';
import 'package:stolby_flutter/presentation/core/app_assets.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_card_info.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_marker_button.dart';

class MapRockCardContent extends StatelessWidget {
  const MapRockCardContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        MapCardInfo(rock: rock),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const MapMarkerButton(),
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
