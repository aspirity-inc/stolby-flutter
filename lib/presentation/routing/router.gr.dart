// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../detailed_rock_page/detailed_rock_page.dart' as _i3;
import '../main_page/main_page.dart' as _i2;
import '../map_page/map_page.dart' as _i5;
import '../rock_view_image_page/rock_view_image_page.dart' as _i4;
import '../rocks_page/rocks_page.dart' as _i6;
import '../setting_page/settings_page.dart' as _i7;
import '../splash_page/splash_page.dart' as _i1;
import 'app_router_transaction_builders.dart' as _i10;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    MainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.MainPage());
    },
    DetailedRockRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedRockRouteArgs>();
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.DetailedRockPage(key: args.key, rockId: args.rockId),
          transitionsBuilder: _i10.AppRouteTransitionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    RockViewImageRoute.name: (routeData) {
      final args = routeData.argsAs<RockViewImageRouteArgs>();
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.RockViewImagePage(
              key: args.key, picturePath: args.picturePath),
          transitionsBuilder: _i10.AppRouteTransitionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    MapRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.MapPage(),
          transitionsBuilder: _i10.AppRouteTransitionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    RocksRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.RocksPage(),
          transitionsBuilder: _i10.AppRouteTransitionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    SettingsRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.SettingsPage(),
          transitionsBuilder: _i10.AppRouteTransitionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(MainRoute.name, path: '/main-page', children: [
          _i8.RouteConfig(MapRoute.name, path: '', parent: MainRoute.name),
          _i8.RouteConfig(RocksRoute.name,
              path: 'rocks-page', parent: MainRoute.name),
          _i8.RouteConfig(SettingsRoute.name,
              path: 'settings-page', parent: MainRoute.name)
        ]),
        _i8.RouteConfig(DetailedRockRoute.name, path: '/detailed-rock-page'),
        _i8.RouteConfig(RockViewImageRoute.name, path: '/rock-view-image-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.MainPage]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(name, path: '/main-page', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for [_i3.DetailedRockPage]
class DetailedRockRoute extends _i8.PageRouteInfo<DetailedRockRouteArgs> {
  DetailedRockRoute({_i9.Key? key, required int rockId})
      : super(name,
            path: '/detailed-rock-page',
            args: DetailedRockRouteArgs(key: key, rockId: rockId));

  static const String name = 'DetailedRockRoute';
}

class DetailedRockRouteArgs {
  const DetailedRockRouteArgs({this.key, required this.rockId});

  final _i9.Key? key;

  final int rockId;
}

/// generated route for [_i4.RockViewImagePage]
class RockViewImageRoute extends _i8.PageRouteInfo<RockViewImageRouteArgs> {
  RockViewImageRoute({_i9.Key? key, required String picturePath})
      : super(name,
            path: '/rock-view-image-page',
            args: RockViewImageRouteArgs(key: key, picturePath: picturePath));

  static const String name = 'RockViewImageRoute';
}

class RockViewImageRouteArgs {
  const RockViewImageRouteArgs({this.key, required this.picturePath});

  final _i9.Key? key;

  final String picturePath;
}

/// generated route for [_i5.MapPage]
class MapRoute extends _i8.PageRouteInfo<void> {
  const MapRoute() : super(name, path: '');

  static const String name = 'MapRoute';
}

/// generated route for [_i6.RocksPage]
class RocksRoute extends _i8.PageRouteInfo<void> {
  const RocksRoute() : super(name, path: 'rocks-page');

  static const String name = 'RocksRoute';
}

/// generated route for [_i7.SettingsPage]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: 'settings-page');

  static const String name = 'SettingsRoute';
}
