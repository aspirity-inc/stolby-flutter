import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_geolocation_icon_button.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_widget.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_zoom_icon_button.dart';

class MapPage extends StatelessWidget {
  final LatLng? initialCoordinates;

  const MapPage({
    Key? key,
    this.initialCoordinates,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MapWidget(
            initialCoordinates: initialCoordinates,
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
