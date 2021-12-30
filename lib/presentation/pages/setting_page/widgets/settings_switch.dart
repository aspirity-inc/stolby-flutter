import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsSwitch extends StatelessWidget {
  final String text;
  final bool value;
  final Function(bool) onPressed;
  final bool disabled;

  const SettingsSwitch({
    Key? key,
    required this.text,
    required this.value,
    required this.onPressed,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          onChanged: disabled ? (_) {} : onPressed,
        ),
      ],
    );
  }
}
