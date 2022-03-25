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
  late MockISettingsRepository repository;
  late SettingsBloc bloc;
  const testItem = AppSettingsEntity(
    geolocationEnabled: false,
    reversedMap: false,
    mapUserCentering: false,
    autoThemeChange: true,
    darkTheme: false,
    onboardingVisited: false,
  );

  setUp(() {
    repository = MockISettingsRepository();
    bloc = SettingsBloc(repository);
  });

  tearDown(() => bloc.close());

  group('initialized()', () {
    blocTest(
      'Should emit nothing as initial state same as initial shared preferences',
      build: () {
        when(repository.fetchSettings()).thenAnswer(
          (_) async => testItem,
        );

        return bloc;
      },
      seed: () => SettingsState.initial(),
      act: (_) => bloc.add(const SettingsEvent.initialized()),
      expect: () => <SettingsState>[],
    );
  });

  group('toggleGeolocation()', () {
    blocTest(
      'Should toggle geolocation',
      build: () {
        when(
          repository.toggleGeolocation(
            value: anyNamed('value'),
          ),
        ).thenAnswer(
          (_) async => unit,
        );

        return bloc;
      },
      seed: () => SettingsState.initial(),
      act: (_) => bloc.add(const SettingsEvent.toggledGeolocation()),
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
          repository.toggleMapReverse(
            value: SettingsState.initial().reversedMap,
          ),
        ).thenAnswer(
          (_) async => unit,
        );

        return bloc;
      },
      seed: () => SettingsState.initial(),
      act: (_) => bloc.add(const SettingsEvent.toggledMapReverse()),
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
          repository.toggleUserCentering(
            value: SettingsState.initial().mapUserCentering,
          ),
        ).thenAnswer(
          (_) async => unit,
        );

        return bloc;
      },
      seed: () => SettingsState.initial(),
      act: (_) => bloc.add(const SettingsEvent.toggledUserMapCentering()),
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
          repository.toggleAutoTheme(
            value: SettingsState.initial().autoThemeChange,
          ),
        ).thenAnswer(
          (_) async => unit,
        );

        return bloc;
      },
      seed: () => SettingsState.initial(),
      act: (_) => bloc.add(const SettingsEvent.toggledAutoTheme()),
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
          repository.toggleDarkTheme(
            value: SettingsState.initial().darkTheme,
          ),
        ).thenAnswer(
          (_) async => unit,
        );

        return bloc;
      },
      seed: () => SettingsState.initial(),
      act: (_) => bloc.add(const SettingsEvent.toggledDarkTheme()),
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
          repository.onBoardingVisited(),
        ).thenAnswer(
          (_) async => unit,
        );

        return bloc;
      },
      seed: () => SettingsState.initial(),
      act: (_) => bloc.add(const SettingsEvent.onboardingVisited()),
      expect: () => [
        SettingsState.initial().copyWith(onboardingVisited: true),
      ],
    );
  });
}
