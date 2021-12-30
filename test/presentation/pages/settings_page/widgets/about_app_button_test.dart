import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/pages/setting_page/widgets/about_app_button.dart';

void main() {
  testWidgets(
    "Given rate app button when initialized then text correct",
    (tester) async {
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
            body: AboutAppButton(
              key: ValueKey(
                "about_app_button",
              ),
              version: "3.0.0",
            ),
          ),
        ),
      );
      final popUp = find.byKey(const ValueKey("about_app_pop_up"));
      //assert
      final iconFinder = find.byIcon(Icons.info_outline);
      expect(iconFinder, findsOneWidget);

      expect(popUp, findsNothing);
      expect(find.text("About"), findsOneWidget);
    },
  );

  testWidgets(
    "Given rate app button when initialised then there is no pop up",
    (tester) async {
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
            body: AboutAppButton(
              key: ValueKey(
                "about_app_button",
              ),
              version: "3.0.0",
            ),
          ),
        ),
      );
      //act
      await tester.tap(find.byKey(const ValueKey("about_app_button")));
      await tester.pump();
      final popUp = find.byKey(const ValueKey("about_app_pop_up"));
      expect(popUp, findsOneWidget);

      //assert
      final iconFinder = find.byIcon(Icons.info_outline);
      expect(iconFinder, findsOneWidget);

      expect(find.text("About"), findsNWidgets(2));
      expect(find.text("CLOSE"), findsOneWidget);
    },
  );
}
