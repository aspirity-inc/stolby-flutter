import 'dart:io';
import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';
import 'package:stolby_flutter/presentation/core/app_assets.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({
    Key? key,
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
    mapController.onSymbolTapped.add(
      (symbol) {
        _handleSelected(
          _getCurrentTheme(context),
          symbol.id,
        );
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

  Future<void> _handleSelected(
    bool darkTheme,
    String selectedId,
  ) async {
    Future.wait(
      mapController.symbols.map(
        (e) async => e.id == selectedId
            ? await mapController.updateSymbol(
                e,
                SymbolOptions(
                  iconImage: _getCurrentTheme(context)
                      ? 'dark_marker'
                      : 'light_marker',
                ),
              )
            : await mapController.updateSymbol(
                e,
                SymbolOptions(
                  iconImage: _getCurrentTheme(context)
                      ? 'dark_object'
                      : 'light_object',
                ),
              ),
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
    return BlocBuilder<SettingsBloc, SettingsState>(
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
                      target: const LatLng(
                        55.915964,
                        92.738896,
                      ),
                      zoom: state.zoom,
                    ),
                    minMaxZoomPreference: const MinMaxZoomPreference(9, 18),
                    styleString: _getCurrentTheme(context)
                        ? 'mapbox://styles/aspirity/cke8ds2gt1rjr19qozmvblrr5'
                        : 'mapbox://styles/aspirity/cke81mk9r4mhk19o83lermlpt',
                    compassEnabled: false, //CHANGE TO LOCATION ICON
                    myLocationTrackingMode: settingsState.mapUserCentering
                        ? MyLocationTrackingMode.Tracking
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
    );
  }
}
// TODOS
// TODO: Add location marker
// TODO: Add downloaded area, located in maps.db
// TODO: Add Reaction to user not in stolby
// TODO: Add some card(?) on user reaction on tap on marker maybe small rock item card;
