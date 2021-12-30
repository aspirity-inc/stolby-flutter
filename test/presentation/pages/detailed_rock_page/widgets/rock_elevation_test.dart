import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/rock_elevation.dart';

void main() {
  testWidgets(
    "Given rock with height when initialized then show coordinates",
    (tester) async {
      const tIconData = Icons.trending_up;
      //arrange
      await tester.pumpWidget(
        const MaterialApp(
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Scaffold(
            body: RockElevation(
              height: 25,
              key: ValueKey("rock_elevation"),
            ),
          ),
        ),
      );
      //assert
      final rockElevation = find.byKey(
        const ValueKey("rock_elevation"),
      );
      expect(rockElevation, findsOneWidget);

      final iconFinder = find.byIcon(tIconData);
      expect(iconFinder, findsOneWidget);

      expect(find.text("25"), findsOneWidget);
      expect(find.text("meters"), findsOneWidget);
    },
  );
}
