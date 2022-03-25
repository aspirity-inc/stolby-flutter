import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/presentation/pages/setting_page/widgets/feedback_button.dart';

void main() {
  testWidgets(
    'Given rate app button when initialized then text correct',
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
            body: FeedbackButton(
              key: ValueKey('feedback_button'),
            ),
          ),
        ),
      );

      //assert
      expect(
        find.byIcon(
          CommunityMaterialIcons.comment_text_outline,
        ),
        findsOneWidget,
      );
      expect(find.text('Feedback & Support'), findsOneWidget);
      expect(find.text('Help us advance'), findsOneWidget);
    },
  );
}
