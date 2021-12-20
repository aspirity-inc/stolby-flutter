import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_geolocation_icon_button.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_widget.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_zoom_icon_button.dart';

class MapPageContent extends StatelessWidget {
  const MapPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapWidget(
            initialPosition:
                context.read<SettingsBloc>().state.geolocationEnabled
                    ? const LatLng(
                        // TODO: Change to current user location
                        56.009,
                        92.8151,
                      )
                    : const LatLng(
                        55.8551,
                        92.8333,
                      ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                MapZoomIconButton(
                  action: ZoomIconButtonAction.moreZoom,
                ),
                MapZoomIconButton(
                  action: ZoomIconButtonAction.lessZoom,
                ),
              ],
            ),
          ),
          const Positioned(
            top: 0,
            right: 0,
            child: MapGeolocationIconButton(),
          ),
        ],
      ),
    );
  }
}
