import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/feature/settings/i_settings_repository.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingsRepository _settingsRepository;

  SettingsBloc(this._settingsRepository) : super(SettingsState.initial()) {
    on<SettingsEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {
          final settings = await _settingsRepository.fetchSettings();
          emit(
            state.copyWith(
              geolocationEnabled: settings.geolocationEnabled,
              reversedMap: settings.reversedMap,
              mapUserCentering: settings.mapUserCentering,
              autoThemeChange: settings.autoThemeChange,
              darkTheme: settings.darkTheme,
              onboardingVisited: settings.onboardingVisited,
            ),
          );
        },
        toggledGeolocation: (e) async {
          final value = !state.geolocationEnabled;
          _settingsRepository.toggleGeolocation(value);
          emit(state.copyWith(geolocationEnabled: value));
        },
        toggledMapReverse: (e) async {
          final value = !state.reversedMap;
          _settingsRepository.toggleMapReverse(value);
          emit(state.copyWith(reversedMap: value));
        },
        toggledUserMapCentering: (e) async {
          final value = !state.mapUserCentering;
          _settingsRepository.toggleUserCentering(value);
          emit(state.copyWith(mapUserCentering: value));
        },
        toggledAutoTheme: (e) async {
          final value = !state.autoThemeChange;
          _settingsRepository.toggleAutoTheme(value);
          emit(state.copyWith(autoThemeChange: value));
        },
        toggledDarkTheme: (e) async {
          final value = !state.darkTheme;
          _settingsRepository.toggleDarkTheme(value);
          emit(state.copyWith(darkTheme: value));
        },
        onboardingVisited: (e) async {
          _settingsRepository.onBoardingVisited();
          emit(state.copyWith(onboardingVisited: true));
        },
      );
    });
  }
}
