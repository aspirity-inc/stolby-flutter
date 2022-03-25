import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';
import 'package:stolby_flutter/domain/feature/settings/i_settings_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart';

@LazySingleton(as: ISettingsRepository)
class SettingsRepository implements ISettingsRepository {
  final SharedPreferencesService _preferencesService;

  SettingsRepository(this._preferencesService);

  @override
  Future<AppSettingsEntity> fetchSettings() async => AppSettingsEntity(
        geolocationEnabled: _preferencesService.getGeolocationEnabled(),
        reversedMap: _preferencesService.getReversedMap(),
        mapUserCentering: _preferencesService.getMapUserCentering(),
        autoThemeChange:
            _preferencesService.getAutoThemeChange(defaultValue: true),
        darkTheme: _preferencesService.getLightTheme(),
        onboardingVisited: _preferencesService.getOnboardingVisited(),
      );

  @override
  Future<void> toggleGeolocation({required bool value}) async =>
      _preferencesService.setGeolocationEnabled(geolocationEnabled: value);

  @override
  Future<void> toggleMapReverse({required bool value}) async =>
      _preferencesService.setReversedMap(reversedMap: value);

  @override
  Future<void> toggleUserCentering({required bool value}) async =>
      _preferencesService.setMapUserCentering(mapUserCentering: value);

  @override
  Future<void> toggleAutoTheme({required bool value}) async =>
      _preferencesService.setAutoThemeChange(autoThemeChange: value);

  @override
  Future<void> toggleDarkTheme({required bool value}) async =>
      _preferencesService.setLightTheme(lightTheme: value);

  @override
  Future<void> onBoardingVisited() async {
    await _preferencesService.setOnboardingVisited();
  }
}
