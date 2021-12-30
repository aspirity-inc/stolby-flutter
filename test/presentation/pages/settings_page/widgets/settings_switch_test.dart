import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/presentation/pages/setting_page/widgets/settings_switch.dart';

void main() {
  testWidgets(
    "Given cupertino switch, when pressed then it changes value on opposite",
    (tester) async {
      //arrange
      bool value = false;
      await tester.pumpWidget(SettingsSwitch(
        text: "test",
        value: value,
        onPressed: (_) {
          value = !value;
        },
      ));
      //act
      await tester.press(find.byType(CupertinoSwitch));
      await tester.pump();
      //assert
      expect(value, true);
    },
  );
}
