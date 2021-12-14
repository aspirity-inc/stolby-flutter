import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/rock_text.dart';

void main() {
  testWidgets(
    "Given rock text with short info, when pressed then on button it changes to full text info",
    (tester) async {
      //arrange
      bool value = false;
      await tester.pumpWidget(
        const RockText(
          shortInfo: "test",
          fullInfo: "test full info",
        ),
      );
      //act
      await tester.tap(
        find.byType(InkWell),
        pointer: 1,
      );
      await tester.pump();
      //assert
      expect(find.text("test full info"), findsOneWidget);
    },
  );
}
