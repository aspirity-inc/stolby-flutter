import 'package:auto_route/auto_route.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/detailed_rock_page.dart';
import 'package:stolby_flutter/presentation/pages/feedback_page/feedback_page.dart';
import 'package:stolby_flutter/presentation/pages/main_page/main_page.dart';
import 'package:stolby_flutter/presentation/pages/map_page/map_page.dart';
import 'package:stolby_flutter/presentation/pages/onboarding_page/onboarding_page.dart';
import 'package:stolby_flutter/presentation/pages/rock_view_image_page/rock_view_image_page.dart';
import 'package:stolby_flutter/presentation/pages/rocks_page/rocks_page.dart';
import 'package:stolby_flutter/presentation/pages/setting_page/settings_page.dart';
import 'package:stolby_flutter/presentation/pages/splash_page/splash_page.dart';
import 'package:stolby_flutter/presentation/routing/app_router_transaction_builders.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    CustomRoute(
      page: SplashPage,
      initial: true,
    ),
    CustomRoute(
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
    CustomRoute(
      page: RockViewImagePage,
      transitionsBuilder: AppRouteTransitionsBuilders.zoomIn,
      reverseDurationInMilliseconds: 500,
      durationInMilliseconds: 500,
    ),
    CustomRoute(
      page: FeedbackPage,
      transitionsBuilder: AppRouteTransitionsBuilders.zoomIn,
      reverseDurationInMilliseconds: 500,
      durationInMilliseconds: 500,
    ),
    CustomRoute(
      page: OnboardingPage,
      transitionsBuilder: AppRouteTransitionsBuilders.zoomIn,
      reverseDurationInMilliseconds: 500,
      durationInMilliseconds: 500,
    ),
  ],
)
class $AppRouter {}
