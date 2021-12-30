import 'package:flutter/material.dart';
import 'package:stolby_flutter/presentation/widgets/detailed_rock_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FeedbackPage extends StatelessWidget {
  final _deviceController = TextEditingController();
  final _controller = TextEditingController();

  FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final color = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      appBar: const DetailedRockAppbar(
        difficulty: null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Text(
              localization.feedback_device,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                border: Border.all(
                  width: 2,
                  color: color,
                ),
              ),
              child: TextField(
                controller: _deviceController,
                maxLines: 1,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: localization.feedback_device_model,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                border: Border.all(
                  width: 2,
                  color: color,
                ),
              ),
              child: TextField(
                controller: _controller,
                maxLength: 500,
                maxLines: 5,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: localization.drawer_head_title_help,
                  hintStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              onTap: () {}, // TODO: SEND FEEDBACK
              child: Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  color: color,
                ),
                child: Text(
                  localization.feedback_action,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
