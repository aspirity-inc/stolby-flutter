part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  factory SettingsEvent.initialized() = _Initialized;
  factory SettingsEvent.toogleGeolocation() = _ToogleGeolocation;
  factory SettingsEvent.toogleMapReverse() = _ToogleMapReverse;
  factory SettingsEvent.toogleUserMapCentering() = _ToogleUserMapCentering;
  factory SettingsEvent.toogleAutoTheme() = _ToogleAutoTheme;
  factory SettingsEvent.toogleDartTheme() = _ToogleDarkTheme;
  factory SettingsEvent.onboardingVisited() = _OnboardingVisited;
}
