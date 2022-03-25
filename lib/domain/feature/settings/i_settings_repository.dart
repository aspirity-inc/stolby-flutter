import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';

abstract class ISettingsRepository {
  Future<AppSettingsEntity> fetchSettings();
  Future<void> toggleAutoTheme({required bool value});
  Future<void> toggleDarkTheme({required bool value});
  Future<void> toggleMapReverse({required bool value});
  Future<void> toggleUserCentering({required bool value});
  Future<void> toggleGeolocation({required bool value});
  Future<void> onBoardingVisited();
}
