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
    CustomRoute<void>(
      page: SplashPage,
      initial: true,
    ),
    CustomRoute<void>(
      page: MainPage,
      children: [
        CustomRoute<void>(
          page: MapPage,
          initial: true,
          transitionsBuilder: AppTransactionsBuilders.zoomIn,
          reverseDurationInMilliseconds: 500,
          durationInMilliseconds: 500,
        ),
        CustomRoute<void>(
          page: RocksPage,
          transitionsBuilder: AppTransactionsBuilders.zoomIn,
          reverseDurationInMilliseconds: 500,
          durationInMilliseconds: 500,
        ),
        CustomRoute<void>(
          page: SettingsPage,
          transitionsBuilder: AppTransactionsBuilders.zoomIn,
          reverseDurationInMilliseconds: 500,
          durationInMilliseconds: 500,
        ),
      ],
    ),
    CustomRoute<void>(
      page: DetailedRockPage,
      transitionsBuilder: AppTransactionsBuilders.zoomIn,
      reverseDurationInMilliseconds: 500,
      durationInMilliseconds: 500,
    ),
    CustomRoute<void>(
      page: RockViewImagePage,
      transitionsBuilder: AppTransactionsBuilders.zoomIn,
      reverseDurationInMilliseconds: 500,
      durationInMilliseconds: 500,
    ),
    CustomRoute<void>(
      page: FeedbackPage,
      transitionsBuilder: AppTransactionsBuilders.zoomIn,
      reverseDurationInMilliseconds: 500,
      durationInMilliseconds: 500,
    ),
    CustomRoute<void>(
      page: OnboardingPage,
      transitionsBuilder: AppTransactionsBuilders.zoomIn,
      reverseDurationInMilliseconds: 500,
      durationInMilliseconds: 500,
    ),
  ],
)
class $AppRouter {}
