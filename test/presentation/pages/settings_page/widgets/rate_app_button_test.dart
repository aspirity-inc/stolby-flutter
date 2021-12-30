import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/pages/setting_page/widgets/rate_app_button.dart';

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
            body: RateAppButton(
              key: ValueKey("rate_app_button"),
            ),
          ),
        ),
      );

      //assert
      expect(
        find.byIcon(
          Icons.thumb_up_outlined,
        ),
        findsOneWidget,
      );
      expect(find.text("Rate"), findsOneWidget);
    },
  );
}
