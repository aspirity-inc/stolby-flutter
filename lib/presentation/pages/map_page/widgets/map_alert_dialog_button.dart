import 'package:flutter/material.dart';

class MapAlertDialogButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  const MapAlertDialogButton({
    required this.onPressed,
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      customBorder: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          border: Border.fromBorderSide(
            BorderSide(
              color: theme.colorScheme.secondary,
              width: 2,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: theme.colorScheme.onBackground,
              ),
            ),
            Icon(
              icon,
              color: theme.colorScheme.onBackground,
            ),
          ],
        ),
      ),
    );
  }
}
