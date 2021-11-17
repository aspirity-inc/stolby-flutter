import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pref_names.dart';

@lazySingleton
class SharedPreferencesService {
  final SharedPreferences _preferences;

  SharedPreferencesService(this._preferences);

  bool get geolocationEnabled =>
      _preferences.getBool(PrefNames.geolocationEnabled) ?? false;
  Future<void> setGeolocationEnabled({bool geolocationEnabled = false}) =>
      _preferences.setBool(
        PrefNames.geolocationEnabled,
        geolocationEnabled,
      );

  bool get reversedMap => _preferences.getBool(PrefNames.reversedMap) ?? false;
  Future<void> setReversedMap({bool reversedMap = false}) =>
      _preferences.setBool(
        PrefNames.reversedMap,
        reversedMap,
      );

  bool get mapUserCentering =>
      _preferences.getBool(PrefNames.mapUserCentering) ?? false;
  Future<void> setMapUserCentering({bool mapUserCentering = false}) =>
      _preferences.setBool(
        PrefNames.mapUserCentering,
        mapUserCentering,
      );

  bool get autoThemeChange =>
      _preferences.getBool(PrefNames.autoThemeChange) ?? false;
  Future<void> setAutoThemeChange({bool autoThemeChange = false}) =>
      _preferences.setBool(
        PrefNames.autoThemeChange,
        autoThemeChange,
      );

  bool get lightTheme => _preferences.getBool(PrefNames.lightTheme) ?? false;
  Future<void> setLightTheme({bool lightTheme = false}) => _preferences.setBool(
        PrefNames.lightTheme,
        lightTheme,
      );
}
