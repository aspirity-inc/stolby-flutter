import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';
import 'package:stolby_flutter/domain/feature/settings/i_settings_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart';

@LazySingleton(as: ISettingsRepository)
class SettingsRepository implements ISettingsRepository {
  SharedPreferencesService _preferencesService;

  SettingsRepository(this._preferencesService);

  @override
  Future<AppSettingsEntity> fetchSettings() async {
    return AppSettingsEntity(
      geolocationEnabled: _preferencesService.getGeolocationEnabled(),
      reversedMap: _preferencesService.getReversedMap(),
      mapUserCentering: _preferencesService.getMapUserCentering(),
      autoThemeChange: _preferencesService.getAutoThemeChange(),
      lightTheme: _preferencesService.getLightTheme(),
      onboardingVisited: _preferencesService.getOnboardingVisited(),
    );
  }

  @override
  Future<void> toggleAutoTheme() async {
    _preferencesService.setAutoThemeChange(
      !_preferencesService.getAutoThemeChange(),
    );
  }

  @override
  Future<void> toggleDarkTheme() async {
    _preferencesService.setLightTheme(
      !_preferencesService.getLightTheme(),
    );
  }

  @override
  Future<void> toggleGeolocation() async {
    _preferencesService.setGeolocationEnabled(
      !_preferencesService.getGeolocationEnabled(),
    );
  }

  @override
  Future<void> toggleMapReverse() async {
    _preferencesService.setReversedMap(
      !_preferencesService.getReversedMap(),
    );
  }

  @override
  Future<void> toggleUserCentering() async {
    _preferencesService.setMapUserCentering(
      !_preferencesService.getMapUserCentering(),
    );
  }
}
