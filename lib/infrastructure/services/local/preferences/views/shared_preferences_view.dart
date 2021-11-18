import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';

part 'shared_preferences_view.freezed.dart';

@freezed
class SharedPreferencesView with _$SharedPreferencesView {
  const SharedPreferencesView._();

  const factory SharedPreferencesView({
    required bool geolocationEnabled,
    required bool reversedMap,
    required bool mapUserCentering,
    required bool autoThemeChange,
    required bool darkTheme,
    required bool onboardingVisited,
  }) = _SharedPreferencesView;

  AppSettingsEntity toDomain() => AppSettingsEntity(
        geolocationEnabled: geolocationEnabled,
        reversedMap: reversedMap,
        mapUserCentering: mapUserCentering,
        autoThemeChange: autoThemeChange,
        darkTheme: darkTheme,
        onboardingVisited: onboardingVisited,
      );
}
