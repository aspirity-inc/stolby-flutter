import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/presentation/map_page/widgets/map_geolocation_icon_button.dart';
import 'package:stolby_flutter/presentation/map_page/widgets/map_zoom_icon_button.dart';

class MapPageContent extends StatelessWidget {
  const MapPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MapZoomIconButton(
                      onPressed: () => context
                          .read<MapBloc>()
                          .add(MapEvent.zoomChanged(state.zoom + 0.5)),
                      icon: Icons.add,
                    ),
                    MapZoomIconButton(
                      icon: Icons.remove,
                      onPressed: () => context
                          .read<MapBloc>()
                          .add(MapEvent.zoomChanged(state.zoom - 0.5)),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: MapGeolocationIconButton(
                  enabled:
                      context.read<SettingsBloc>().state.geolocationEnabled,
                  onPressed: () => context
                      .read<SettingsBloc>()
                      .add(const SettingsEvent.toggledGeolocation()),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
