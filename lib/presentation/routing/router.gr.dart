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
import 'app_router_transaction_builders.dart' as _i8;

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
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.MapPage(),
          transitionsBuilder: _i8.AppRouteTransitionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    RocksRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.RocksPage(),
          transitionsBuilder: _i8.AppRouteTransitionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    SettingsRoute.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.SettingsPage(),
          transitionsBuilder: _i8.AppRouteTransitionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashRoute.name, path: '/'),
        _i6.RouteConfig(MainRoute.name, path: '/main-page', children: [
          _i6.RouteConfig(MapRoute.name, path: '', parent: MainRoute.name),
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
  const MapRoute() : super(name, path: '');

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
