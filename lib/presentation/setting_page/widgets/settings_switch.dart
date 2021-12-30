import 'package:flutter/cupertino.dart';

class SettingsSwitch extends StatelessWidget {
  final String text;
  final bool value;
  final Function(bool) onPressed;

  const SettingsSwitch({
    Key? key,
    required this.text,
    required this.value,
    required this.onPressed,
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
          value: value,
          onChanged: onPressed,
        ),
      ],
    );
  }
}
