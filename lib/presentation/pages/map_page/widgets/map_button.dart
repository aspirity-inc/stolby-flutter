import 'package:flutter/material.dart';

class MapButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  const MapButton({
    required this.onPressed,
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: theme.colorScheme.secondary,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: theme.colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );
  }
}
