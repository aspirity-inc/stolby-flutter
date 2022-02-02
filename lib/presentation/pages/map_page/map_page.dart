import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_geolocation_icon_button.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_rock_card_content.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_widget.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_zoom_icon_button.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/swipable_card.dart';

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
          Positioned(
            bottom: 32,
            left: 0,
            right: 0,
            child: BlocBuilder<MapControlBloc, MapControlState>(
              builder: (context, state) {
                return state.clickedRock.fold(
                  () => const SizedBox(),
                  (a) => SwipableCard(
                    id: a.id,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/${a.picName}.jpg',
                              width: 128,
                              height: 128,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Positioned(
            top: 0,
            right: 0,
            child: MapGeolocationIconButton(),
          ),
          const Positioned(
            bottom: 16,
            left: 0,
            right: 0,
            child: MapRockCardContent(),
          ),
        ],
      ),
    );
  }
}
