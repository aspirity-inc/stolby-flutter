import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RockText extends StatefulWidget {
  final String shortInfo;
  final String fullInfo;

  const RockText({
    Key? key,
    required this.shortInfo,
    required this.fullInfo,
  }) : super(key: key);

  @override
  State<RockText> createState() => _RockTextState();
}

class _RockTextState extends State<RockText> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;
    final localization = AppLocalizations.of(context)!;

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
          height: 8.0,
        ),
        InkWell(
          onTap: () => setState(() => expanded = !expanded),
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 8.0,
            ),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              border: Border.all(color: color),
            ),
            child: Text(
              expanded
                  ? localization.rock_screen_button_hide
                  : localization.rock_screen_button_more,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
