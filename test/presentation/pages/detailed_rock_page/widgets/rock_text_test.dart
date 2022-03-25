import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/rock_text.dart';

void main() {
  testWidgets(
    'Given rock text with short info, '
    'when pressed then on button it changes to full text info',
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
            body: RockText(
              shortInfo: 'test',
              fullInfo: 'test full info',
            ),
          ),
        ),
      );
      //act
      final button = find.byKey(
        const ValueKey('rock_text_button'),
      );
      expect(button, findsOneWidget);

      await tester.tap(
        button,
        pointer: 1,
      );
      await tester.pump();
      //assert
      expect(find.text('test full info'), findsOneWidget);
    },
  );

  testWidgets(
    'Given rock text with short info,'
    ' when pressed then on button it changes button text to hide',
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
            body: RockText(shortInfo: 'test', fullInfo: 'test full info'),
          ),
        ),
      );
      //act
      final button = find.byKey(
        const ValueKey('rock_text_button'),
      );
      expect(button, findsOneWidget);

      expect(find.text('Read more'), findsOneWidget);
      await tester.tap(
        button,
        pointer: 1,
      );
      await tester.pump();

      //assert
      expect(find.text('Hide'), findsOneWidget);
    },
  );
}
