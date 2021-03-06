import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/domain/feature/settings/entities/app_settings_entity.dart';
import 'package:stolby_flutter/infrastructure/features/settings/settings_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/preferences/shared_preferences_service.dart';

import 'settings_repository_test.mocks.dart';

@GenerateMocks([SharedPreferencesService])
void main() {
  late MockSharedPreferencesService prefs;
  late SettingsRepository repository;
  const testItem = AppSettingsEntity(
    geolocationEnabled: false,
    reversedMap: false,
    mapUserCentering: false,
    autoThemeChange: true,
    darkTheme: false,
    onboardingVisited: false,
  );

  setUp(
    () {
      prefs = MockSharedPreferencesService();
      repository = SettingsRepository(prefs);
    },
  );

  group(
    'fetchSettings()',
    () {
      test(
        'Should get settings entity',
        () async {
          //arrange
          when(prefs.getGeolocationEnabled()).thenAnswer(
            (_) => false,
          );
          when(prefs.getReversedMap()).thenAnswer(
            (_) => false,
          );
          when(prefs.getMapUserCentering()).thenAnswer(
            (_) => false,
          );
          when(prefs.getAutoThemeChange(defaultValue: true)).thenAnswer(
            (_) => true,
          );
          when(prefs.getLightTheme()).thenAnswer(
            (_) => false,
          );
          when(prefs.getOnboardingVisited()).thenAnswer(
            (_) => false,
          );
          //act
          final result = await repository.fetchSettings();
          //assert
          expect(
            testItem,
            result,
          );
        },
      );
    },
  );
}
