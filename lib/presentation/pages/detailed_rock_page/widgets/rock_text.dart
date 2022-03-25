import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RockText extends StatefulWidget {
  final String shortInfo;
  final String fullInfo;

  const RockText({
    required this.shortInfo,
    required this.fullInfo,
    Key? key,
  }) : super(key: key);

  @override
  State<RockText> createState() => _RockTextState();
}

class _RockTextState extends State<RockText> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;
    final localization = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          expanded ? widget.fullInfo : widget.shortInfo,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        InkWell(
          key: const ValueKey('rock_text_button'),
          onTap: () => setState(() => expanded = !expanded),
          child: Text(
            (expanded
                    ? localization?.rock_screen_button_hide
                    : localization?.rock_screen_button_more) ??
                '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
