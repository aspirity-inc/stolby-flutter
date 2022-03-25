import 'package:flutter/cupertino.dart';

class SettingsSwitch extends StatelessWidget {
  final String text;
  final bool value;
  final ValueChanged<bool> onPressed;
  final bool disabled;

  const SettingsSwitch({
    required this.text,
    required this.value,
    required this.onPressed,
    Key? key,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          CupertinoSwitch(
            key: const ValueKey('settings_switch_switch'),
            activeColor: disabled ? CupertinoColors.secondarySystemFill : null,
            trackColor: disabled ? CupertinoColors.secondarySystemFill : null,
            value: value,
            onChanged: onPressed,
          ),
        ],
      );
}
