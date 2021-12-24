import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
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
            onMarkerPressed: (rock) {
              try {
                final rockId = int.parse(rock);
                context.router.push(
                  DetailedRockRoute(
                    rockId: rockId,
                  ),
                );
              } on FormatException {}
            },
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
