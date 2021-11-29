import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class MapGeolocationIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool enabled;

  const MapGeolocationIconButton({
    Key? key,
    required this.onPressed,
    required this.enabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Icon(
          enabled
              ? CommunityMaterialIcons.crosshairs_gps
              : CommunityMaterialIcons.crosshairs,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
