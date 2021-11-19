import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';
import 'package:stolby_flutter/domain/feature/settings/i_settings_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart';

@LazySingleton(as: ISettingsRepository)
class SettingsRepository implements ISettingsRepository {
  final SharedPreferencesService _preferencesService;

  SettingsRepository(this._preferencesService);

  @override
  Future<AppSettingsEntity> fetchSettings() async {
    return AppSettingsEntity(
      geolocationEnabled: _preferencesService.getGeolocationEnabled(),
      reversedMap: _preferencesService.getReversedMap(),
      mapUserCentering: _preferencesService.getMapUserCentering(),
      autoThemeChange:
          _preferencesService.getAutoThemeChange(defaultValue: true),
      darkTheme: _preferencesService.getLightTheme(),
      onboardingVisited: _preferencesService.getOnboardingVisited(),
    );
  }

  @override
  Future<void> toggleGeolocation(bool value) async =>
      _preferencesService.setGeolocationEnabled(value);

  @override
  Future<void> toggleMapReverse(bool value) async =>
      _preferencesService.setReversedMap(value);

  @override
  Future<void> toggleUserCentering(bool value) async =>
      _preferencesService.setMapUserCentering(value);

  @override
  Future<void> toggleAutoTheme(bool value) async =>
      _preferencesService.setAutoThemeChange(value);

  @override
  Future<void> toggleDarkTheme(bool value) async =>
      _preferencesService.setLightTheme(value);

  @override
  Future<void> onBoardingVisited() async {
    _preferencesService.setOnboardingVisited();
  }
}
