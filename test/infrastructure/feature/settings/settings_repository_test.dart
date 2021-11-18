import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';
import 'package:stolby_flutter/infrastructure/features/settings/settings_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/views/shared_preferences_view.dart';

import 'settings_repository_test.mocks.dart';

@GenerateMocks([SharedPreferencesService])
void main() {
  late MockSharedPreferencesService _prefs;
  late SettingsRepository _repository;
  const testItem = SharedPreferencesView(
    geolocationEnabled: false,
    reversedMap: false,
    mapUserCentering: false,
    autoThemeChange: false,
    darkTheme: false,
    onboardingVisited: false,
  );

  setUp(
    () {
      _prefs = MockSharedPreferencesService();
      _repository = SettingsRepository(_prefs);
    },
  );

  group(
    'fetchSettings()',
    () {
      test(
        'Should get settings entity',
        () async {
          when(_prefs.getSettings()).thenAnswer((_) => testItem);
          final result = await _repository.fetchSettings();
          expect(
            testItem.toDomain(),
            result,
          );
        },
      );
    },
  );

  group(
    'toggleGeolocation()',
    () {
      test(
        'Should get geolocation toggled',
        () async {
          when(_prefs.getSettings()).thenAnswer(
            (_) => testItem.copyWith(geolocationEnabled: true),
          );
          when(_prefs.setGeolocationEnabled(true)).thenAnswer(
            (_) async => unit,
          );
          when(_prefs.getGeolocationEnabled()).thenAnswer(
            (_) => false,
          );
          _repository.toggleGeolocation();
          AppSettingsEntity result = await _repository.fetchSettings();
          expect(
            testItem.copyWith(geolocationEnabled: true).toDomain(),
            result,
          );
        },
      );
    },
  );

  group(
    'toggleMapReverse()',
    () {
      test(
        'Should get mapReverse toggled',
        () async {
          when(_prefs.getSettings()).thenAnswer(
            (_) => testItem.copyWith(reversedMap: true),
          );
          when(_prefs.setReversedMap(true)).thenAnswer(
            (_) async => unit,
          );
          when(_prefs.getReversedMap()).thenAnswer(
            (_) => false,
          );
          _repository.toggleMapReverse();
          AppSettingsEntity result = await _repository.fetchSettings();
          expect(testItem.copyWith(reversedMap: true).toDomain(), result);
        },
      );
    },
  );

  group(
    'toggleUserCentering()',
    () {
      test(
        'Should get userCentering toggled',
        () async {
          when(_prefs.getSettings()).thenAnswer(
            (_) => testItem.copyWith(mapUserCentering: true),
          );
          when(_prefs.setMapUserCentering(true)).thenAnswer(
            (_) async => unit,
          );
          when(_prefs.getMapUserCentering()).thenAnswer(
            (_) => false,
          );
          _repository.toggleUserCentering();
          AppSettingsEntity result = await _repository.fetchSettings();
          expect(testItem.copyWith(mapUserCentering: true).toDomain(), result);
        },
      );
    },
  );

  group(
    'toggleAutoTheme()',
    () {
      test(
        'Should get autoTheme toggled',
        () async {
          when(_prefs.getSettings()).thenAnswer(
            (_) => testItem.copyWith(autoThemeChange: true),
          );
          when(_prefs.setAutoThemeChange(true)).thenAnswer(
            (_) async => unit,
          );
          when(_prefs.getAutoThemeChange()).thenAnswer(
            (_) => false,
          );
          _repository.toggleAutoTheme();
          AppSettingsEntity result = await _repository.fetchSettings();
          expect(testItem.copyWith(autoThemeChange: true).toDomain(), result);
        },
      );
    },
  );

  group(
    'toggleDarkTheme()',
    () {
      test(
        'Should get darkTheme toggled',
        () async {
          when(_prefs.getSettings()).thenAnswer(
            (_) => testItem.copyWith(darkTheme: true),
          );
          when(_prefs.setLightTheme(true)).thenAnswer(
            (_) async => unit,
          );
          when(_prefs.getLightTheme()).thenAnswer(
            (_) => false,
          );
          _repository.toggleDarkTheme();
          AppSettingsEntity result = await _repository.fetchSettings();
          expect(testItem.copyWith(darkTheme: true).toDomain(), result);
        },
      );
    },
  );

  group(
    'onBoardingVisited()',
    () {
      test(
        'Should get onBoardingVisited toggled',
        () async {
          when(_prefs.getSettings()).thenAnswer(
            (_) => testItem.copyWith(onboardingVisited: true),
          );
          when(_prefs.setOnboardingVisited()).thenAnswer(
            (_) async => unit,
          );
          _repository.onBoardingVisited();
          AppSettingsEntity result = await _repository.fetchSettings();
          expect(testItem.copyWith(onboardingVisited: true).toDomain(), result);
        },
      );
    },
  );
}
