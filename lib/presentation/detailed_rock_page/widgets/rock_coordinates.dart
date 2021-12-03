import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RockCoordinates extends StatelessWidget {
  final double latitude;
  final double longitude;

  const RockCoordinates({
    Key? key,
    required this.latitude,
    required this.longitude,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;

    return Column(
      children: [
        const Icon(
          CupertinoIcons.location,
          color: Colors.black,
          size: 36,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          '$latitude,',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: color,
            decoration: TextDecoration.underline,
          ),
        ),
        Text(
          '$longitude',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: color,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    );
  }
}
