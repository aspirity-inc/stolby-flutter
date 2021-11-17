import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pref_names.dart';

@lazySingleton
class SharedPreferencesService {
  final SharedPreferences _preferences;

  SharedPreferencesService(this._preferences);

  bool? get geolocationEnabled =>
      _preferences.getBool(PrefNames.geolocationEnabled);
  Future<void> setGeolocationEnabled(bool? geolocationEnabled) => _preferences
      .setBool(PrefNames.geolocationEnabled, geolocationEnabled ?? false);

  bool? get reversedMap => _preferences.getBool(PrefNames.reversedMap);
  Future<void> setReversedMap(bool? reversedMap) =>
      _preferences.setBool(PrefNames.reversedMap, reversedMap ?? false);

  bool? get mapUserCentering =>
      _preferences.getBool(PrefNames.mapUserCentering);
  Future<void> setMapUserCentering(bool? mapUserCentering) => _preferences
      .setBool(PrefNames.mapUserCentering, mapUserCentering ?? false);

  bool? get autoThemeChange => _preferences.getBool(PrefNames.autoThemeChange);
  Future<void> setAutoThemeChange(bool? autoThemeChange) =>
      _preferences.setBool(PrefNames.autoThemeChange, autoThemeChange ?? false);

  bool? get lightTheme => _preferences.getBool(PrefNames.lightTheme);
  Future<void> setLightTheme(bool? lightTheme) =>
      _preferences.setBool(PrefNames.lightTheme, lightTheme ?? false);
}
