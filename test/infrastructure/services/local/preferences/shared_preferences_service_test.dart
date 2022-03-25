import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/pref_names.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart';

import 'shared_preferences_service_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late SharedPreferencesService prefsService;
  late MockSharedPreferences prefs;

  setUp(() async {
    prefs = MockSharedPreferences();
    prefsService = SharedPreferencesService(prefs);
  });

  group(
    'getGeolocationEnabled()',
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => null);
          // act
          final result = prefsService.getGeolocationEnabled();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => null);
          // act
          final result = prefsService.getGeolocationEnabled(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => true);
          // act
          final result = prefsService.getGeolocationEnabled();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    'getReversedMap()',
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => null);
          // act
          final result = prefsService.getReversedMap();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => null);
          // act
          final result = prefsService.getReversedMap(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => true);
          // act
          final result = prefsService.getReversedMap();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    'getMapUserCentering()',
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => null);
          // act
          final result = prefsService.getMapUserCentering();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => null);
          // act
          final result = prefsService.getMapUserCentering(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => true);
          // act
          final result = prefsService.getMapUserCentering();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    'getAutoThemeChange()',
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => null);
          // act
          final result = prefsService.getAutoThemeChange();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => null);
          // act
          final result = prefsService.getAutoThemeChange(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => true);
          // act
          final result = prefsService.getAutoThemeChange();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    'getLightTheme()',
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => null);
          // act
          final result = prefsService.getLightTheme();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => null);
          // act
          final result = prefsService.getLightTheme(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => true);
          // act
          final result = prefsService.getLightTheme();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    'getOnboardingVisited()',
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(prefs.getBool(PrefNames.onboardingVisited))
              .thenAnswer((_) => null);
          // act
          final result = prefsService.getOnboardingVisited();
          // assert
          expect(false, result);
        },
      );

      test(
        'Should get value stored',
        () {
          // arrange
          when(prefs.getBool(PrefNames.onboardingVisited))
              .thenAnswer((_) => true);
          // act
          final result = prefsService.getOnboardingVisited();
          // assert
          expect(true, result);
        },
      );
    },
  );
}
