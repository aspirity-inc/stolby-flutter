import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_geolocation_icon_button.dart';

void main() {
  testWidgets(
    "Given MapGeolocationIconButton when pressed then enabled icon is presented",
    (tester) async {
      //arrange
      bool enabled = false;
      const disabledIcon = CommunityMaterialIcons.crosshairs;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MapGeolocationIconButton(
              key: const ValueKey('map_geolocation_icon_button'),
              onPressed: () {
                enabled = !enabled;
              },
              enabled: enabled,
            ),
          ),
        ),
      );
      //act

      final widget = find.byKey(const ValueKey('map_geolocation_icon_button'));
      expect(widget, findsOneWidget);

      expect(enabled, false);

      await tester.tap(widget);
      await tester.pump();

      //assert
      final disabledIconFinder = find.byIcon(disabledIcon);
      expect(disabledIconFinder, findsOneWidget);

      expect(enabled, true);
    },
  );
}
