import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart';

void main() {
  late SharedPreferencesService _prefsService;
  late SharedPreferences _prefs;
  setUp(() async {
    _prefs = await SharedPreferences.getInstance();
    _prefsService = SharedPreferencesService(_prefs);
  });

  tearDown(() => _prefs.clear());

  group(
    "getGeolocationEnabled()",
    () {
      test(
        'Should get false',
        () {
          bool result = _prefsService.getGeolocationEnabled();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          bool result = _prefsService.getGeolocationEnabled(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          _prefsService.setGeolocationEnabled(true);
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
          bool result = _prefsService.getReversedMap();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          bool result = _prefsService.getReversedMap(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          _prefsService.setReversedMap(true);
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
          bool result = _prefsService.getMapUserCentering();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          bool result = _prefsService.getMapUserCentering(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          _prefsService.setMapUserCentering(true);
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
          bool result = _prefsService.getAutoThemeChange();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          bool result = _prefsService.getAutoThemeChange(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          _prefsService.setAutoThemeChange(true);
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
          bool result = _prefsService.getLightTheme();
          expect(false, result);
        },
      );
      test(
        'Should get default value',
        () {
          bool result = _prefsService.getLightTheme(defaultValue: true);
          expect(true, result);
        },
      );
      test(
        'Should get value stored',
        () {
          _prefsService.setLightTheme(true);
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
          bool result = _prefsService.getOnboardingVisited();
          expect(false, result);
        },
      );

      test(
        'Should get value stored',
        () {
          _prefsService.setOnboardingVisited();
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
          _prefsService.setOnboardingVisited();
          bool result = _prefsService.getOnboardingVisited();
          expect(true, result);
        },
      );
    },
  );
}
