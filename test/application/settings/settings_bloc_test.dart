import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';
import 'package:stolby_flutter/domain/feature/settings/i_settings_repository.dart';

import 'settings_bloc_test.mocks.dart';

@GenerateMocks([ISettingsRepository])
void main() {
  late ISettingsRepository _repository;
  late SettingsBloc _bloc;
  const testItem = AppSettingsEntity(
    geolocationEnabled: false,
    reversedMap: false,
    mapUserCentering: false,
    autoThemeChange: true,
    darkTheme: false,
    onboardingVisited: false,
  );

  setUp(() {
    _repository = MockISettingsRepository();
    _bloc = SettingsBloc(_repository);
  });

  tearDown(() => _bloc.close());

  group('initialized()', () {
    blocTest(
      'Should emit nothing as initial state same as initial shared preferences',
      build: () {
        when(_repository.fetchSettings()).thenAnswer(
          (_) async => testItem,
        );

        return _bloc;
      },
      seed: () => SettingsState.initial(),
      act: (SettingsBloc bloc) => bloc.add(const SettingsEvent.initialized()),
      expect: () => [],
    );
  });

  group('toggleGeolocation()', () {
    blocTest(
      'Should toggle geolocation',
      build: () {
        when(
          _repository
              .toggleGeolocation(SettingsState.initial().geolocationEnabled),
        ).thenAnswer(
          (_) async => unit,
        );

        return _bloc;
      },
      seed: () => SettingsState.initial(),
      act: (SettingsBloc bloc) =>
          bloc.add(const SettingsEvent.toggledGeolocation()),
      expect: () => [
        SettingsState.initial().copyWith(geolocationEnabled: true),
      ],
    );
  });

  group('toggleMapReverse()', () {
    blocTest(
      'Should toggle MapReverse',
      build: () {
        when(
          _repository.toggleMapReverse(SettingsState.initial().reversedMap),
        ).thenAnswer(
          (_) async => unit,
        );

        return _bloc;
      },
      seed: () => SettingsState.initial(),
      act: (SettingsBloc bloc) =>
          bloc.add(const SettingsEvent.toggledMapReverse()),
      expect: () => [
        SettingsState.initial().copyWith(reversedMap: true),
      ],
    );
  });

  group('toggleUserCentering()', () {
    blocTest(
      'Should toggle userCentering',
      build: () {
        when(
          _repository
              .toggleUserCentering(SettingsState.initial().mapUserCentering),
        ).thenAnswer(
          (_) async => unit,
        );

        return _bloc;
      },
      seed: () => SettingsState.initial(),
      act: (SettingsBloc bloc) =>
          bloc.add(const SettingsEvent.toggledUserMapCentering()),
      expect: () => [
        SettingsState.initial().copyWith(mapUserCentering: true),
      ],
    );
  });

  group('autoThemeChange()', () {
    blocTest(
      'Should toggle autoTheme',
      build: () {
        when(
          _repository.toggleAutoTheme(SettingsState.initial().autoThemeChange),
        ).thenAnswer(
          (_) async => unit,
        );

        return _bloc;
      },
      seed: () => SettingsState.initial(),
      act: (SettingsBloc bloc) =>
          bloc.add(const SettingsEvent.toggledAutoTheme()),
      expect: () => [
        SettingsState.initial().copyWith(autoThemeChange: false),
      ],
    );
  });

  group('toggleDarkTheme()', () {
    blocTest(
      'Should toggle DarkTheme',
      build: () {
        when(
          _repository.toggleDarkTheme(SettingsState.initial().darkTheme),
        ).thenAnswer(
          (_) async => unit,
        );

        return _bloc;
      },
      seed: () => SettingsState.initial(),
      act: (SettingsBloc bloc) =>
          bloc.add(const SettingsEvent.toggledDarkTheme()),
      expect: () => [
        SettingsState.initial().copyWith(darkTheme: true),
      ],
    );
  });

  group('onBoardingVisited()', () {
    blocTest(
      'Should toggle onBoardingVisited',
      build: () {
        when(
          _repository.onBoardingVisited(),
        ).thenAnswer(
          (_) async => unit,
        );

        return _bloc;
      },
      seed: () => SettingsState.initial(),
      act: (SettingsBloc bloc) =>
          bloc.add(const SettingsEvent.onboardingVisited()),
      expect: () => [
        SettingsState.initial().copyWith(onboardingVisited: true),
      ],
    );
  });
}
