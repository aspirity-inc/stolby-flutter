import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/pages/setting_page/widgets/settings_switch.dart';

void main() {
  testWidgets(
    "Given settings switch when pressed then text field is test and switch is true",
    (tester) async {
      //arrange
      bool tValue = false;
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Scaffold(
            body: SettingsSwitch(
              key: const ValueKey("settings_switch"),
              text: 'test',
              value: tValue,
              onPressed: (_) {
                tValue = !tValue;
              },
            ),
          ),
        ),
      );
      //act
      final settingsSwitch = find.byKey(
        const ValueKey('settings_switch_switch'),
      );
      expect(settingsSwitch, findsOneWidget);

      await tester.tap(settingsSwitch);
      await tester.pump();
      //assert
      expect(tValue, true);
      expect(find.text("test"), findsOneWidget);
    },
  );
}
