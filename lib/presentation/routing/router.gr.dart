// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../main_page/main_page.dart' as _i2;
import '../map_page/map_page.dart' as _i3;
import '../rocks_page/rocks_page.dart' as _i4;
import '../setting_page/settings_page.dart' as _i5;
import '../splash_page/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    MainRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.MainPage());
    },
    MapRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.MapPage());
    },
    RocksRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.RocksPage());
    },
    SettingsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.SettingsPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(MainRoute.name, path: '/main-page', children: [
          _i6.RouteConfig(MapRoute.name,
              path: 'map-page', parent: MainRoute.name),
          _i6.RouteConfig(RocksRoute.name,
              path: 'rocks-page', parent: MainRoute.name),
          _i6.RouteConfig(SettingsRoute.name,
              path: 'settings-page', parent: MainRoute.name)
        ])
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/main-page', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for [_i3.MapPage]
class MapRoute extends _i6.PageRouteInfo<void> {
  const MapRoute() : super(name, path: 'map-page');

  static const String name = 'MapRoute';
}

/// generated route for [_i4.RocksPage]
class RocksRoute extends _i6.PageRouteInfo<void> {
  const RocksRoute() : super(name, path: 'rocks-page');

  static const String name = 'RocksRoute';
}

/// generated route for [_i5.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: 'settings-page');

  static const String name = 'SettingsRoute';
}
