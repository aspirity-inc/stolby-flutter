import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/setting_page/widgets/about_app_button.dart';
import 'package:stolby_flutter/presentation/setting_page/widgets/feedback_button.dart';
import 'package:stolby_flutter/presentation/setting_page/widgets/rate_app_button.dart';

class SettingsContentBottom extends StatelessWidget {
  const SettingsContentBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Divider(
          height: 1,
        ),
        AboutAppButton(
          version: "3.0.0",
        ),
        Divider(
          height: 1,
        ),
        FeedbackButton(),
        Divider(
          height: 1,
        ),
        RateAppButton(),
        Divider(
          height: 1,
        ),
      ],
    );
  }
}