import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/pref_names.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/views/shared_preferences_view.dart';

import 'shared_preferences_service_test.mocks.dart';

@GenerateMocks([SharedPreferences])
void main() {
  late SharedPreferencesService _prefsService;
  late MockSharedPreferences _prefs;
  setUp(() async {
    _prefs = await MockSharedPreferences();
    _prefsService = SharedPreferencesService(_prefs);
  });

  group(
    "getGeolocationEnabled()",
    () {
      test(
        'Should get false',
        () {
          when(_prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => null);
          bool result = _prefsService.getGeolocationEnabled();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          when(_prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => null);
          bool result = _prefsService.getGeolocationEnabled(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          when(_prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => true);
          bool result = _prefsService.getGeolocationEnabled();
          expect(true, result);
        },
      );
    },
  );

  group(
    "setGeolocationEnabled()",
    () {
      test(
        'Should set value',
        () {
          when(_prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => true);
          when(_prefs.setBool(PrefNames.geolocationEnabled, true))
              .thenAnswer((_) async => false);
          _prefsService.setGeolocationEnabled(true);
          bool result = _prefsService.getGeolocationEnabled();
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
          when(_prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => null);
          bool result = _prefsService.getReversedMap();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          when(_prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => null);
          bool result = _prefsService.getReversedMap(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          when(_prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => true);
          bool result = _prefsService.getReversedMap();
          expect(true, result);
        },
      );
    },
  );

  group(
    "setReversedMap()",
    () {
      test(
        'Should set value',
        () {
          when(_prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => true);
          when(_prefs.setBool(PrefNames.reversedMap, true))
              .thenAnswer((_) async => false);
          _prefsService.setReversedMap(true);
          bool result = _prefsService.getReversedMap();
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
          when(_prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => null);
          bool result = _prefsService.getMapUserCentering();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          when(_prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => null);
          bool result = _prefsService.getMapUserCentering(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          when(_prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => true);
          bool result = _prefsService.getMapUserCentering();
          expect(true, result);
        },
      );
    },
  );

  group(
    "setMapUserCentering()",
    () {
      test(
        'Should set value',
        () {
          when(_prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => true);
          when(_prefs.setBool(PrefNames.mapUserCentering, true))
              .thenAnswer((_) async => false);
          _prefsService.setMapUserCentering(true);
          bool result = _prefsService.getMapUserCentering();
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
          when(_prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => null);
          bool result = _prefsService.getAutoThemeChange();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          when(_prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => null);
          bool result = _prefsService.getAutoThemeChange(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          when(_prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => true);
          bool result = _prefsService.getAutoThemeChange();
          expect(true, result);
        },
      );
    },
  );

  group(
    "setAutoThemeChange()",
    () {
      test(
        'Should set value',
        () {
          when(_prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => true);
          when(_prefs.setBool(PrefNames.autoThemeChange, true))
              .thenAnswer((_) async => false);
          _prefsService.setAutoThemeChange(true);
          bool result = _prefsService.getAutoThemeChange();
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
          when(_prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => null);
          bool result = _prefsService.getLightTheme();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          when(_prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => null);
          bool result = _prefsService.getLightTheme(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          when(_prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => true);
          bool result = _prefsService.getLightTheme();
          expect(true, result);
        },
      );
    },
  );

  group(
    "setLightTheme()",
    () {
      test(
        'Should set value',
        () {
          when(_prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => true);
          when(_prefs.setBool(PrefNames.lightTheme, true))
              .thenAnswer((_) async => false);
          _prefsService.setLightTheme(true);
          bool result = _prefsService.getLightTheme();
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
          when(_prefs.getBool(PrefNames.onboardingVisited))
              .thenAnswer((_) => null);
          bool result = _prefsService.getOnboardingVisited();
          expect(false, result);
        },
      );

      test(
        'Should get value stored',
        () {
          when(_prefs.getBool(PrefNames.onboardingVisited))
              .thenAnswer((_) => true);
          bool result = _prefsService.getOnboardingVisited();
          expect(true, result);
        },
      );
    },
  );

  group(
    "setOnboardingVisited()",
    () {
      test(
        'Should set value',
        () {
          when(_prefs.getBool(PrefNames.onboardingVisited))
              .thenAnswer((_) => true);
          when(_prefs.setBool(PrefNames.onboardingVisited, true))
              .thenAnswer((_) async => false);
          _prefsService.setOnboardingVisited();
          bool result = _prefsService.getOnboardingVisited();
          expect(true, result);
        },
      );
    },
  );

  group(
    "getSettings()",
    () {
      test(
        'Should get SharedPreferencesView object with all properties false',
        () {
          when(_prefs.getBool(PrefNames.geolocationEnabled))
              .thenAnswer((_) => false);
          when(_prefs.getBool(PrefNames.reversedMap)).thenAnswer((_) => false);
          when(_prefs.getBool(PrefNames.mapUserCentering))
              .thenAnswer((_) => false);
          when(_prefs.getBool(PrefNames.autoThemeChange))
              .thenAnswer((_) => false);
          when(_prefs.getBool(PrefNames.lightTheme)).thenAnswer((_) => false);
          when(_prefs.getBool(PrefNames.onboardingVisited))
              .thenAnswer((_) => false);
          final result = _prefsService.getSettings();
          expect(
            const SharedPreferencesView(
              geolocationEnabled: false,
              reversedMap: false,
              mapUserCentering: false,
              autoThemeChange: false,
              darkTheme: false,
              onboardingVisited: false,
            ),
            result,
          );
        },
      );
    },
  );
}
