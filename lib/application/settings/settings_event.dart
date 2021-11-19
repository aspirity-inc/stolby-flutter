part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.initialized() = _Initialized;
  const factory SettingsEvent.toggledGeolocation() = _ToggledGeolocation;
  const factory SettingsEvent.toggledMapReverse() = _ToggledMapReverse;
  const factory SettingsEvent.toggledUserMapCentering() =
      _ToggledUserMapCentering;
  const factory SettingsEvent.toggledAutoTheme() = _ToggledAutoTheme;
  const factory SettingsEvent.toggledDarkTheme() = _ToggledDarkTheme;
  const factory SettingsEvent.onboardingVisited() = _OnboardingVisited;
}
