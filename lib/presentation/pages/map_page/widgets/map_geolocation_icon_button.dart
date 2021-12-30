import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/location/location_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';

class MapGeolocationIconButton extends StatelessWidget {
  const MapGeolocationIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            context.read<LocationBloc>().add(
                  state.geolocationEnabled
                      ? const LocationEvent.stopWatchingLocation()
                      : const LocationEvent.startWatchingLocation(),
                );
            context
                .read<SettingsBloc>()
                .add(const SettingsEvent.toggledGeolocation());
          },
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 16.0,
            ),
            height: 56,
            width: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondary,
            ),
            child: Icon(
              state.geolocationEnabled
                  ? CommunityMaterialIcons.crosshairs_gps
                  : CommunityMaterialIcons.crosshairs,
              size: 24,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
