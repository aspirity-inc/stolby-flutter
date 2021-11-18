import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';

abstract class ISettingsRepository {
  Future<AppSettingsEntity> fetchSettings();
  Future<void> toggleAutoTheme();
  Future<void> toggleDarkTheme();
  Future<void> toggleMapReverse();
  Future<void> toggleUserCentering();
  Future<void> toggleGeolocation();
  Future<void> onBoardingVisited();
}
