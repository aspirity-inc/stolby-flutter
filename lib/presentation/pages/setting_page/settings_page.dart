import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/pages/setting_page/widgets/settings_content_bottom.dart';
import 'package:stolby_flutter/presentation/pages/setting_page/widgets/settings_content_top.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SettingsContentTop(),
              SettingsContentBottom(),
            ],
          ),
        ),
      );
}
