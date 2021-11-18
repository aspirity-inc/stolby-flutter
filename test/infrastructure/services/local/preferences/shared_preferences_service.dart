import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pref_names.dart';

@lazySingleton
class SharedPreferencesService {
  final SharedPreferences _preferences;

  SharedPreferencesService(this._preferences);

  bool getGeolocationEnabled({bool? defaultValue}) =>
      _preferences.getBool(PrefNames.geolocationEnabled) ??
      defaultValue ??
      false;

  Future<void> setGeolocationEnabled(bool geolocationEnabled) =>
      _preferences.setBool(
        PrefNames.geolocationEnabled,
        geolocationEnabled,
      );

  bool getReversedMap({bool? defaultValue}) =>
      _preferences.getBool(PrefNames.reversedMap) ?? defaultValue ?? false;

  Future<void> setReversedMap(bool reversedMap) => _preferences.setBool(
        PrefNames.reversedMap,
        reversedMap,
      );

  bool getMapUserCentering({bool? defaultValue}) =>
      _preferences.getBool(PrefNames.mapUserCentering) ?? defaultValue ?? false;

  Future<void> setMapUserCentering(bool mapUserCentering) =>
      _preferences.setBool(
        PrefNames.mapUserCentering,
        mapUserCentering,
      );

  bool getAutoThemeChange({bool? defaultValue}) =>
      _preferences.getBool(PrefNames.autoThemeChange) ?? defaultValue ?? false;

  Future<void> setAutoThemeChange(bool autoThemeChange) => _preferences.setBool(
        PrefNames.autoThemeChange,
        autoThemeChange,
      );

  bool getLightTheme({bool? defaultValue}) =>
      _preferences.getBool(PrefNames.lightTheme) ?? defaultValue ?? false;

  Future<void> setLightTheme(bool lightTheme) => _preferences.setBool(
        PrefNames.lightTheme,
        lightTheme,
      );

  bool getOnboardingVisited() =>
      _preferences.getBool(PrefNames.onboardingVisited) ?? false;

  Future<void> setOnboardingVisited() =>
      _preferences.setBool(PrefNames.onboardingVisited, true);

}
