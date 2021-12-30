import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/pages/feedback_page/feedback_page.dart';

void main() {
  testWidgets(
    "Given feedback page when initialized then all text fields are correct",
    (tester) async {
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
            body: FeedbackPage(
              key: const ValueKey('feedback_page'),
            ),
          ),
        ),
      );
      //assert
      final widgetFinder = find.byKey(
        const ValueKey('feedback_page'),
      );
      expect(widgetFinder, findsOneWidget);

      expect(
        find.text("If some error happened please enter you device model"),
        findsOneWidget,
      );
      expect(find.text("device model (optional)"), findsOneWidget);
      expect(find.text("Help us advance"), findsOneWidget);
      expect(find.text("Send feedback"), findsOneWidget);
    },
  );

  testWidgets(
    "Given feedback page when written in device text field test then device text field text is test",
    (tester) async {
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
            body: FeedbackPage(
              key: const ValueKey('feedback_page'),
            ),
          ),
        ),
      );
      //act
      final textField =
          find.byKey(const ValueKey("feedback_page_device_text_field"));
      expect(textField, findsOneWidget);
      await tester.enterText(textField, "test");
      await tester.pump();

      //assert
      final widgetFinder = find.byKey(
        const ValueKey('feedback_page'),
      );
      expect(widgetFinder, findsOneWidget);
      expect(find.text("test"), findsOneWidget);
    },
  );

  testWidgets(
    "Given feedback page when written in device text field test then device text field text is test",
    (tester) async {
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
            body: FeedbackPage(
              key: const ValueKey('feedback_page'),
            ),
          ),
        ),
      );
      //act
      final textField =
          find.byKey(const ValueKey("feedback_page_feedback_text_field"));
      expect(textField, findsOneWidget);
      await tester.enterText(textField, "test");
      await tester.pump();

      //assert
      final widgetFinder = find.byKey(
        const ValueKey('feedback_page'),
      );
      expect(widgetFinder, findsOneWidget);
      expect(find.text("test"), findsOneWidget);
    },
  );
}
