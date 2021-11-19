import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/pref_names.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart';

import 'shared_preferences_service_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late SharedPreferencesService _prefsService;
  late MockSharedPreferences _prefs;
  setUp(() async {
    _prefs = MockSharedPreferences();
    _prefsService = SharedPreferencesService(_prefs);
  });

  group(
    "getGeolocationEnabled()",
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => null);
          // act
          bool result = _prefsService.getGeolocationEnabled();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => null);
          // act
          bool result = _prefsService.getGeolocationEnabled(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => true);
          // act
          bool result = _prefsService.getGeolocationEnabled();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    "getReversedMap()",
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => null);
          // act
          bool result = _prefsService.getReversedMap();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => null);
          // act
          bool result = _prefsService.getReversedMap(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => true);
          // act
          bool result = _prefsService.getReversedMap();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    "getMapUserCentering()",
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => null);
          // act
          bool result = _prefsService.getMapUserCentering();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => null);
          // act
          bool result = _prefsService.getMapUserCentering(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => true);
          // act
          bool result = _prefsService.getMapUserCentering();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    "getAutoThemeChange()",
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => null);
          // act
          bool result = _prefsService.getAutoThemeChange();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => null);
          // act
          bool result = _prefsService.getAutoThemeChange(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => true);
          // act
          bool result = _prefsService.getAutoThemeChange();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    "getLightTheme()",
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => null);
          // act
          bool result = _prefsService.getLightTheme();
          // assert
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => null);
          // act
          bool result = _prefsService.getLightTheme(defaultValue: true);
          // assert
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => true);
          // act
          bool result = _prefsService.getLightTheme();
          // assert
          expect(true, result);
        },
      );
    },
  );

  group(
    "getOnboardingVisited()",
    () {
      test(
        'Should get false',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.onboardingVisited))
              .thenAnswer((_) => null);
          // act
          bool result = _prefsService.getOnboardingVisited();
          // assert
          expect(false, result);
        },
      );

      test(
        'Should get value stored',
        () {
          // arrange
          when(_prefs.getBool(PrefNames.onboardingVisited))
              .thenAnswer((_) => true);
          // act
          bool result = _prefsService.getOnboardingVisited();
          // assert
          expect(true, result);
        },
      );
    },
  );
}
