import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/rock_coordinates.dart';

void main() {
  testWidgets(
    "Given rock coordinates widget when initialized then show coordinates",
    (tester) async {
      const tIconData = CupertinoIcons.location;
      //arrange
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: RockCoordinates(
              key: ValueKey("rock_coordinates"),
              latitude: 90.1,
              longitude: 89.1,
              localizedName: "test",
            ),
          ),
        ),
      );
      //assert
      final widgetFinder = find.byKey(
        const ValueKey("rock_coordinates"),
      );
      expect(widgetFinder, findsOneWidget);

      final iconFinder = find.byIcon(tIconData);
      expect(iconFinder, findsOneWidget);

      expect(find.text("90.1,"), findsOneWidget);
      expect(find.text("89.1"), findsOneWidget);
    },
  );
}
