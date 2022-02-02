import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';
import 'package:stolby_flutter/presentation/core/app_assets.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_card_info.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_marker_button.dart';

class MapRockCardContent extends StatelessWidget {
  final RockEntity rock;

  const MapRockCardContent({
    Key? key,
    required this.rock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image.asset(
                AppImages.getRockImage(rock.picName),
                height: 136,
                width: 136,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            MapCardInfo(
              rock: rock,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const MapMarkerButton(),
      ],
    );
  }
}
