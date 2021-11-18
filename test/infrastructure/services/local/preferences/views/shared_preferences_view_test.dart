import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/views/shared_preferences_view.dart';

void main() {
  group(
    'toDomain()',
    () {
      test(
        'Should return correct entity',
        () {
          const initial = SharedPreferencesView(
            geolocationEnabled: false,
            reversedMap: false,
            mapUserCentering: false,
            autoThemeChange: false,
            darkTheme: false,
            onboardingVisited: false,
          );
          const expected = AppSettingsEntity(
            geolocationEnabled: false,
            reversedMap: false,
            mapUserCentering: false,
            autoThemeChange: false,
            darkTheme: false,
            onboardingVisited: false,
          );
          final result = initial.toDomain();
          expect(expected, result);
        },
      );
    },
  );
}
