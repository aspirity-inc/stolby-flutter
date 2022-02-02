import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:latlong2/latlong.dart' as latlong;
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/presentation/core/app_assets.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';

class MapWidget extends StatefulWidget {
  final latlong.LatLng? initialCoordinates;

  const MapWidget({
    Key? key,
    this.initialCoordinates,
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
    mapController.matchMapLanguageWithDeviceDefault();
    mapController.setSymbolIconAllowOverlap(true);
    mapController.setSymbolIconIgnorePlacement(true);
    mapController.onSymbolTapped.add(
      (symbol) {
        try {
          final rockId = int.parse(symbol.id);
          final rock = context
              .read<MapBloc>()
              .state
              .rocks
              .firstWhere((r) => r.id == rockId);

          context.read<MapControlBloc>().add(
                MapControlEvent.rockClicked(rock),
              );
          _handleSelected(_getCurrentTheme(context));
        } on FormatException {
          return;
        }

        mapController.animateCamera(
          CameraUpdate.newLatLng(
            symbol.options.geometry ??
                const LatLng(
                  55.915964,
                  92.738896,
                ),
          ),
        );
      },
    );
  }

  LatLng _latlongTransformer(latlong.LatLng coordinates) =>
      LatLng(coordinates.latitude, coordinates.longitude);

  Future<void> _addImage({
    required String assetName,
    required String assetPath,
  }) async {
    final byteData = await rootBundle.load(assetPath);
    mapController.addImage(
      assetName,
      byteData.buffer.asUint8List(),
    );
  }

  Future<void> _initMarkerImages(
    MediaQueryData mediaQuery,
  ) async {
    await Future.wait([
      _addImage(
        assetName: 'light_object',
        assetPath: AppIcons.mapObjectIcon,
      ),
      _addImage(
        assetName: 'dark_object',
        assetPath: AppIcons.mapObjectDarkIcon,
      ),
      _addImage(
        assetName: 'light_marker',
        assetPath: AppIcons.mapMarkerIcon,
      ),
      _addImage(
        assetName: 'dark_marker',
        assetPath: AppIcons.mapMarkerDarkIcon,
      ),
    ]);
  }

  void _handleSelected(
    bool darkTheme,
  ) async {
    final selectedRock = context
        .read<MapControlBloc>()
        .state
        .setMarkerRock
        .fold(() => null, (a) => a.id);
    Future.wait(
      mapController.symbols.map(
        (symbol) async {
          await mapController.updateSymbol(
            symbol,
            symbol.id == selectedRock.toString()
                ? SymbolOptions(
                    iconImage: darkTheme ? 'dark_marker' : 'light_marker',
                  )
                : SymbolOptions(
                    iconImage: darkTheme ? 'dark_object' : 'light_object',
                  ),
          );
        },
      ),
    );
  }

  Future<void> _onStyleLoadedCallback(BuildContext context) async {
    await _initMarkerImages(MediaQuery.of(context));
    final rocks = context.read<MapBloc>().state.rocks;
    final darkTheme = context.read<SettingsBloc>().state.darkTheme;

    Future.wait(
      rocks.map((e) async {
        await mapController.addSymbol(
          SymbolOptions(
            iconImage: darkTheme ? 'dark_object' : 'light_object',
            iconSize: Platform.isIOS
                ? 1.2 / MediaQuery.of(context).devicePixelRatio
                : 1.2,
            iconAnchor: 'bottom',
            geometry: LatLng(
              e.latitude,
              e.longitude,
            ),
            zIndex: 1,
          ),
          {'id': e.id},
        );
      }),
    );
  }

  bool _getCurrentTheme(BuildContext context) =>
      Theme.of(context).colorScheme.onBackground == Colors.white;

  @override
  Widget build(BuildContext context) {
    return BlocListener<MapControlBloc, MapControlState>(
      listener: (context, mapControlState) {
        _handleSelected(_getCurrentTheme(context));
      },
      child: BlocConsumer<SettingsBloc, SettingsState>(
        listener: (context, settingsState) async {
          settingsState.reversedMap
              ? mapController.moveCamera(
                  CameraUpdate.bearingTo(180),
                )
              : null;
          await Future.delayed(
            const Duration(milliseconds: 300),
          );
          _handleSelected(_getCurrentTheme(context));
        },
        listenWhen: (p, c) => p != c,
        builder: (context, settingsState) {
          return BlocConsumer<MapBloc, MapState>(
            listener: (context, state) {
              mapController.animateCamera(
                CameraUpdate.zoomTo(state.zoom),
              );
            },
            listenWhen: (p, c) => p.zoom != c.zoom,
            builder: (context, state) {
              return state.rocks.isEmpty
                  ? const SizedBox()
                  : MapboxMap(
                      accessToken:
                          'pk.eyJ1IjoiYXNwaXJpdHkiLCJhIjoiY2syem53azIyMGFpMzNkcWo2eGJsaGxtYyJ9.NQCPk2eMLJmnuO0yh5LYpg',
                      initialCameraPosition: CameraPosition(
                        bearing: settingsState.reversedMap ? 180 : 0,
                        target: widget.initialCoordinates != null
                            ? _latlongTransformer(widget.initialCoordinates!)
                            : const LatLng(
                                55.915964,
                                92.738896,
                              ),
                        zoom: state.zoom,
                      ),
                      minMaxZoomPreference: const MinMaxZoomPreference(9, 18),
                      styleString: _getCurrentTheme(context)
                          ? 'mapbox://styles/aspirity/cke8ds2gt1rjr19qozmvblrr5'
                          : 'mapbox://styles/aspirity/cke81mk9r4mhk19o83lermlpt',
                      //'mapbox://styles/aspirity/cke81mk9r4mhk19o83lermlpt',

                      compassEnabled: false,
                      trackCameraPosition: settingsState.mapUserCentering,
                      myLocationTrackingMode: settingsState.mapUserCentering
                          ? MyLocationTrackingMode.TrackingGPS
                          : MyLocationTrackingMode.None,
                      myLocationEnabled: settingsState.geolocationEnabled,
                      logoViewMargins: const Point(16, 32),
                      attributionButtonMargins: const Point(106, 32),
                      onMapCreated: _handleMapCreated,
                      onStyleLoadedCallback: () =>
                          _onStyleLoadedCallback(context),
                    );
            },
          );
        },
      ),
    );
  }
}
