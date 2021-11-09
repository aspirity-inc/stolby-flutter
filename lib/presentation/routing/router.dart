import 'package:auto_route/auto_route.dart';
import 'package:stolby_flutter/presentation/main_page/main_page.dart';
import 'package:stolby_flutter/presentation/map_page/map_page.dart';
import 'package:stolby_flutter/presentation/rocks_page/rocks_page.dart';
import 'package:stolby_flutter/presentation/setting_page/settings_page.dart';
import 'package:stolby_flutter/presentation/splash_page/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: MainPage,
      children: [
        AutoRoute(page: MapPage),
        AutoRoute(page: RocksPage),
        AutoRoute(page: SettingsPage),
      ],
    ),
  ],
)
class $AppRouter {}
