import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RockCoordinates extends StatelessWidget {
  final double latitude;
  final double longitude;
  final String localizedName;

  const RockCoordinates({
    Key? key,
    required this.latitude,
    required this.longitude,
    required this.localizedName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;

    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Icon(
            CupertinoIcons.location,
            size: 36,
            color: Theme.of(context).colorScheme.onBackground,
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
      ),
    );
  }
}
