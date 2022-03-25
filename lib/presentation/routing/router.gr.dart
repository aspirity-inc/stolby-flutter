// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:latlong2/latlong.dart' as _i13;

import '../pages/detailed_rock_page/detailed_rock_page.dart' as _i3;
import '../pages/feedback_page/feedback_page.dart' as _i5;
import '../pages/main_page/main_page.dart' as _i2;
import '../pages/map_page/map_page.dart' as _i7;
import '../pages/onboarding_page/onboarding_page.dart' as _i6;
import '../pages/rock_view_image_page/rock_view_image_page.dart' as _i4;
import '../pages/rocks_page/rocks_page.dart' as _i8;
import '../pages/setting_page/settings_page.dart' as _i9;
import '../pages/splash_page/splash_page.dart' as _i1;
import 'app_router_transaction_builders.dart' as _i12;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.CustomPage<void>(
          routeData: routeData,
          child: const _i1.SplashPage(),
          opaque: true,
          barrierDismissible: false);
    },
    MainRoute.name: (routeData) {
      return _i10.CustomPage<void>(
          routeData: routeData,
          child: const _i2.MainPage(),
          opaque: true,
          barrierDismissible: false);
    },
    DetailedRockRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedRockRouteArgs>();
      return _i10.CustomPage<void>(
          routeData: routeData,
          child: _i3.DetailedRockPage(rockId: args.rockId, key: args.key),
          transitionsBuilder: _i12.AppTransactionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    RockViewImageRoute.name: (routeData) {
      final args = routeData.argsAs<RockViewImageRouteArgs>();
      return _i10.CustomPage<void>(
          routeData: routeData,
          child: _i4.RockViewImagePage(
              picturePath: args.picturePath, key: args.key),
          transitionsBuilder: _i12.AppTransactionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    FeedbackRoute.name: (routeData) {
      final args = routeData.argsAs<FeedbackRouteArgs>(
          orElse: () => const FeedbackRouteArgs());
      return _i10.CustomPage<void>(
          routeData: routeData,
          child: _i5.FeedbackPage(key: args.key),
          transitionsBuilder: _i12.AppTransactionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    OnboardingRoute.name: (routeData) {
      return _i10.CustomPage<void>(
          routeData: routeData,
          child: const _i6.OnboardingPage(),
          transitionsBuilder: _i12.AppTransactionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    MapRoute.name: (routeData) {
      final args =
          routeData.argsAs<MapRouteArgs>(orElse: () => const MapRouteArgs());
      return _i10.CustomPage<void>(
          routeData: routeData,
          child: _i7.MapPage(
              key: args.key, initialCoordinates: args.initialCoordinates),
          transitionsBuilder: _i12.AppTransactionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    RocksRoute.name: (routeData) {
      return _i10.CustomPage<void>(
          routeData: routeData,
          child: const _i8.RocksPage(),
          transitionsBuilder: _i12.AppTransactionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    },
    SettingsRoute.name: (routeData) {
      return _i10.CustomPage<void>(
          routeData: routeData,
          child: const _i9.SettingsPage(),
          transitionsBuilder: _i12.AppTransactionsBuilders.zoomIn,
          durationInMilliseconds: 500,
          reverseDurationInMilliseconds: 500,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashRoute.name, path: '/'),
        _i10.RouteConfig(MainRoute.name, path: '/main-page', children: [
          _i10.RouteConfig(MapRoute.name, path: '', parent: MainRoute.name),
          _i10.RouteConfig(RocksRoute.name,
              path: 'rocks-page', parent: MainRoute.name),
          _i10.RouteConfig(SettingsRoute.name,
              path: 'settings-page', parent: MainRoute.name)
        ]),
        _i10.RouteConfig(DetailedRockRoute.name, path: '/detailed-rock-page'),
        _i10.RouteConfig(RockViewImageRoute.name,
            path: '/rock-view-image-page'),
        _i10.RouteConfig(FeedbackRoute.name, path: '/feedback-page'),
        _i10.RouteConfig(OnboardingRoute.name, path: '/onboarding-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i10.PageRouteInfo<void> {
  const MainRoute({List<_i10.PageRouteInfo>? children})
      : super(MainRoute.name, path: '/main-page', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i3.DetailedRockPage]
class DetailedRockRoute extends _i10.PageRouteInfo<DetailedRockRouteArgs> {
  DetailedRockRoute({required int rockId, _i11.Key? key})
      : super(DetailedRockRoute.name,
            path: '/detailed-rock-page',
            args: DetailedRockRouteArgs(rockId: rockId, key: key));

  static const String name = 'DetailedRockRoute';
}

class DetailedRockRouteArgs {
  const DetailedRockRouteArgs({required this.rockId, this.key});

  final int rockId;

  final _i11.Key? key;

  @override
  String toString() {
    return 'DetailedRockRouteArgs{rockId: $rockId, key: $key}';
  }
}

/// generated route for
/// [_i4.RockViewImagePage]
class RockViewImageRoute extends _i10.PageRouteInfo<RockViewImageRouteArgs> {
  RockViewImageRoute({required String picturePath, _i11.Key? key})
      : super(RockViewImageRoute.name,
            path: '/rock-view-image-page',
            args: RockViewImageRouteArgs(picturePath: picturePath, key: key));

  static const String name = 'RockViewImageRoute';
}

class RockViewImageRouteArgs {
  const RockViewImageRouteArgs({required this.picturePath, this.key});

  final String picturePath;

  final _i11.Key? key;

  @override
  String toString() {
    return 'RockViewImageRouteArgs{picturePath: $picturePath, key: $key}';
  }
}

/// generated route for
/// [_i5.FeedbackPage]
class FeedbackRoute extends _i10.PageRouteInfo<FeedbackRouteArgs> {
  FeedbackRoute({_i11.Key? key})
      : super(FeedbackRoute.name,
            path: '/feedback-page', args: FeedbackRouteArgs(key: key));

  static const String name = 'FeedbackRoute';
}

class FeedbackRouteArgs {
  const FeedbackRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'FeedbackRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.OnboardingPage]
class OnboardingRoute extends _i10.PageRouteInfo<void> {
  const OnboardingRoute()
      : super(OnboardingRoute.name, path: '/onboarding-page');

  static const String name = 'OnboardingRoute';
}

/// generated route for
/// [_i7.MapPage]
class MapRoute extends _i10.PageRouteInfo<MapRouteArgs> {
  MapRoute({_i11.Key? key, _i13.LatLng? initialCoordinates})
      : super(MapRoute.name,
            path: '',
            args:
                MapRouteArgs(key: key, initialCoordinates: initialCoordinates));

  static const String name = 'MapRoute';
}

class MapRouteArgs {
  const MapRouteArgs({this.key, this.initialCoordinates});

  final _i11.Key? key;

  final _i13.LatLng? initialCoordinates;

  @override
  String toString() {
    return 'MapRouteArgs{key: $key, initialCoordinates: $initialCoordinates}';
  }
}

/// generated route for
/// [_i8.RocksPage]
class RocksRoute extends _i10.PageRouteInfo<void> {
  const RocksRoute() : super(RocksRoute.name, path: 'rocks-page');

  static const String name = 'RocksRoute';
}

/// generated route for
/// [_i9.SettingsPage]
class SettingsRoute extends _i10.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings-page');

  static const String name = 'SettingsRoute';
}
