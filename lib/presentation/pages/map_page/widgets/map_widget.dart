import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';
import 'package:stolby_flutter/presentation/core/app_assets.dart';

class MapWidget extends StatefulWidget {
  final LatLng initialPosition;

  const MapWidget({
    Key? key,
    required this.initialPosition,
  }) : super(key: key);

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late MapboxMapController mapController;

  void _handleMapCreated(MapboxMapController controller) {
    setState(() {
      mapController = controller;
    });
    mapController.setSymbolIconAllowOverlap(true);
    mapController.setSymbolIconIgnorePlacement(true);
  }

  Future<void> _addImage({
    required String assetName,
    required String assetPath,
    required double height,
    required double width,
  }) async {
    final image = Image.asset(
      assetPath,
      height: height,
      width: width,
    );
  }

  Future<void> _initMarkerImages(
    MediaQueryData mediaQuery,
  ) async {
    final sizeRatio = mediaQuery.devicePixelRatio;
    await Future.wait([
      _addImage(
        assetName: 'light_object',
        assetPath: AppIcons.mapObjectIcon,
        height: (30 * sizeRatio).toDouble(),
        width: (30 * sizeRatio).toDouble(),
      ),
      _addImage(
        assetName: 'dark_object',
        assetPath: AppIcons.mapObjectDarkIcon,
        height: (30 * sizeRatio).toDouble(),
        width: (30 * sizeRatio).toDouble(),
      ),
      _addImage(
        assetName: 'light_marker',
        assetPath: AppIcons.mapMarkerIcon,
        height: (30 * sizeRatio).toDouble(),
        width: (30 * sizeRatio).toDouble(),
      ),
      _addImage(
        assetName: 'dark_marker',
        assetPath: AppIcons.mapMarkerDarkIcon,
        height: (30 * sizeRatio).toDouble(),
        width: (30 * sizeRatio).toDouble(),
      ),
    ]);
  }

  Future<void> _loadRocksMarkers({
    required List<RockMapEntity> rocks,
    required bool darkTheme,
    required MapboxMapController controller,
  }) async =>
      rocks.map((r) async {
        await mapController.addCircle(
          CircleOptions(
            circleRadius: 100,
            geometry: LatLng(r.latitude, r.longitude),
            circleColor: "#FF0000",
          ),
        );
      });

  Future<void> _onStyleLoadedCallback(BuildContext context) async {
    await _initMarkerImages(MediaQuery.of(context));
    final rocks = context.read<MapBloc>().state.rocks;
    final darkTheme = context.read<SettingsBloc>().state.darkTheme;
    await _loadRocksMarkers(
      rocks: rocks,
      darkTheme: darkTheme,
      controller: mapController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        return state.rocks.isEmpty
            ? const SizedBox()
            : MapboxMap(
                accessToken:
                    'pk.eyJ1IjoiYXNwaXJpdHkiLCJhIjoiY2syem53azIyMGFpMzNkcWo2eGJsaGxtYyJ9.NQCPk2eMLJmnuO0yh5LYpg',
                initialCameraPosition: CameraPosition(
                  target: widget.initialPosition,
                  zoom: state.zoom,
                ),
                compassEnabled: false,
                logoViewMargins: const Point(16, 32),
                attributionButtonMargins: const Point(106, 32),
                onStyleLoadedCallback: () => _onStyleLoadedCallback(context),
              );
      },
    );
  }
}
// TODO: ADD OFFLINE REGION
// TODO: LOAD MAP WITH STYLES
// TODO: LOAD MAP WITH MARKERS
// TODO: ADD REACTION TO ZOOM
// TODO: ADD ANGLE OF THE MAP
