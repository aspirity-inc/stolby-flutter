part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required bool geolocationEnabled,
    required bool reversedMap,
    required bool mapUserCentering,
    required bool autoThemeChange,
    required bool darkTheme,
    required bool onboardingVisited,
  }) = _SettingsState;
  factory SettingsState.initial() => const SettingsState(
        geolocationEnabled: false,
        reversedMap: false,
        mapUserCentering: false,
        autoThemeChange: true,
        darkTheme: false,
        onboardingVisited: false,
      );
}
