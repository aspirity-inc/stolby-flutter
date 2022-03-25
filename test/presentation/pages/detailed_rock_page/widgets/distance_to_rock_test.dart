import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/distance_to_rock.dart';

void main() {
  const tIconData = CommunityMaterialIcons.map_marker_distance;
  testWidgets(
    'Given distance to rock widget when initialized with null distance then distance is n/a',
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
            body: DistanceToRock(
              distance: null,
              key: ValueKey('distance_to_rock'),
            ),
          ),
        ),
      );
      //assert
      final distanceToRock = find.byKey(
        const ValueKey('distance_to_rock'),
      );
      expect(distanceToRock, findsOneWidget);
    },
  );

  testWidgets(
    'Given distance to rock widget when initialized with distance less '
    'than 1000 then distance is meters',
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
            body: DistanceToRock(
              distance: 700,
              key: ValueKey('distance_to_rock'),
            ),
          ),
        ),
      );
      //assert
      final distanceToRock = find.byKey(
        const ValueKey('distance_to_rock'),
      );
      expect(distanceToRock, findsOneWidget);
    },
  );

  testWidgets(
    'Given distance to rock widget when initialized with distance more '
    'than 1000 then distance is kilometers',
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
            body: DistanceToRock(
              distance: 1700,
              key: ValueKey('distance_to_rock'),
            ),
          ),
        ),
      );
      //assert
      final widgetFinder = find.byKey(
        const ValueKey('distance_to_rock'),
      );
      expect(widgetFinder, findsOneWidget);
    },
  );
}
