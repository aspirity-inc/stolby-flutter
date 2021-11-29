import 'dart:ui';
import 'dart:math' as math;
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_list_item_entity.dart';

class RockListItem extends StatelessWidget {
  final int index;

  // TODO: remove const item and add items from list
  final RockListItemEntity item = const RockListItemEntity(
    id: 0,
    latitude: 55.9174,
    longitude: 92.73843,
    picName: 'pic_babkaivnuchka',
    localizedName: 'The Granny and the Granddaughter',
    height: 40,
    difficulty: 1,
  );

  const RockListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  String _difficultyToString(int difficulty, AppLocalizations localization) {
    switch (difficulty) {
      case 0:
        return localization.difficulty_short_0;
      case 1:
        return localization.difficulty_short_1;
      case 2:
        return localization.difficulty_short_2;
      case 3:
        return localization.difficulty_short_3;
      default:
        return "difficulty name not found";
    }
  }

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return AnimationConfiguration.staggeredGrid(
      position: index,
      columnCount: index % 2,
      duration: const Duration(
        milliseconds: 500,
      ),
      child: SlideAnimation(
        verticalOffset: 100,
        child: FadeInAnimation(
          child: Container(
            height: 188,
            margin: EdgeInsets.only(
              left: index % 2 == 0 ? 16 : 8,
              right: index % 2 == 0 ? 8 : 16,
              bottom: 16.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/images/" + item.picName + ".jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 16.0,
                        ),
                        color: Colors.white54,
                        child: Text(
                          _difficultyToString(item.difficulty, localization),
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        color: Colors.white54,
                        child: Column(
                          children: [
                            Text(
                              item.localizedName,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                            Row(
                              children: [
                                Transform.rotate(
                                  angle: 3 * math.pi / 12,
                                  child: const Icon(
                                    CommunityMaterialIcons.navigation,
                                    color: Colors.black,
                                    size: 16,
                                  ),
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                // TODO: Add distance if location enabled
                                const Text(
                                  '1.25 km',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
