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
          await _settingsRepository.toggleGeolocation(value: value);
          emit(state.copyWith(geolocationEnabled: value));
        },
        toggledMapReverse: (e) async {
          final value = !state.reversedMap;
          await _settingsRepository.toggleMapReverse(value: value);
          emit(state.copyWith(reversedMap: value));
        },
        toggledUserMapCentering: (e) async {
          final value = !state.mapUserCentering;
          await _settingsRepository.toggleUserCentering(value: value);
          emit(state.copyWith(mapUserCentering: value));
        },
        toggledAutoTheme: (e) async {
          final value = !state.autoThemeChange;
          await _settingsRepository.toggleAutoTheme(value: value);
          emit(state.copyWith(autoThemeChange: value));
        },
        toggledDarkTheme: (e) async {
          final value = !state.darkTheme;
          await _settingsRepository.toggleDarkTheme(value: value);
          emit(state.copyWith(darkTheme: value));
        },
        onboardingVisited: (e) async {
          await _settingsRepository.onBoardingVisited();
          emit(state.copyWith(onboardingVisited: true));
        },
      );
    });
  }
}
