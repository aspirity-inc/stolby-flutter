import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_zoom_icon_button.dart';

void main() {
  testWidgets(
    "Given MapGeolocationIconButton when pressed then enabled icon is presented",
    (tester) async {
      //arrange
      const tIconData = Icons.add;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MapZoomIconButton(
              key: const ValueKey('map_zoom_icon_button'),
              onPressed: () {},
              icon: tIconData,
            ),
          ),
        ),
      );
      //assert
      final widget = find.byKey(const ValueKey('map_zoom_icon_button'));
      expect(widget, findsOneWidget);

      final iconFinder = find.byIcon(tIconData);
      expect(iconFinder, findsOneWidget);
    },
  );
}
