import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';

abstract class ISettingsRepository {
  Future<AppSettingsEntity> fetchSettings();
  Future<void> toggleAutoTheme(bool value);
  Future<void> toggleDarkTheme(bool value);
  Future<void> toggleMapReverse(bool value);
  Future<void> toggleUserCentering(bool value);
  Future<void> toggleGeolocation(bool value);
  Future<void> onBoardingVisited();
}
