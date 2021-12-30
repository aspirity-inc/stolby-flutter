import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/add_marker_button.dart';

void main() {
  testWidgets(
    "Given add marker button, when it exist then text is add marker",
    (tester) async {
      const tIconData = Icons.location_on;
      //arrange
      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          home: Scaffold(
            body: AddMarkerButton(
              key: const ValueKey('add_marker_button'),
              onPressed: () {},
            ),
          ),
        ),
      );
      //assert
      final widgetFinder = find.byKey(
        const ValueKey("add_marker_button"),
      );
      expect(widgetFinder, findsOneWidget);

      final iconFinder = find.byIcon(tIconData);
      expect(iconFinder, findsOneWidget);

      final textFinder = find.text("Mark");
      expect(textFinder, findsOneWidget);
    },
  );
}
