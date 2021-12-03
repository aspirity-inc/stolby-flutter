import 'package:auto_route/auto_route.dart';
import 'package:stolby_flutter/presentation/detailed_rock_page/detailed_rock_page.dart';
import 'package:stolby_flutter/presentation/main_page/main_page.dart';
import 'package:stolby_flutter/presentation/map_page/map_page.dart';
import 'package:stolby_flutter/presentation/rocks_page/rocks_page.dart';
import 'package:stolby_flutter/presentation/routing/app_router_transaction_builders.dart';
import 'package:stolby_flutter/presentation/setting_page/settings_page.dart';
import 'package:stolby_flutter/presentation/splash_page/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: MainPage,
      children: [
        CustomRoute(
          page: MapPage,
          initial: true,
          transitionsBuilder: AppRouteTransitionsBuilders.zoomIn,
          reverseDurationInMilliseconds: 500,
          durationInMilliseconds: 500,
        ),
        CustomRoute(
          page: RocksPage,
          transitionsBuilder: AppRouteTransitionsBuilders.zoomIn,
          reverseDurationInMilliseconds: 500,
          durationInMilliseconds: 500,
        ),
        CustomRoute(
          page: SettingsPage,
          transitionsBuilder: AppRouteTransitionsBuilders.zoomIn,
          reverseDurationInMilliseconds: 500,
          durationInMilliseconds: 500,
        ),
      ],
    ),
    CustomRoute(
      page: DetailedRockPage,
      transitionsBuilder: AppRouteTransitionsBuilders.zoomIn,
      reverseDurationInMilliseconds: 500,
      durationInMilliseconds: 500,
    ),
  ],
)
class $AppRouter {}
