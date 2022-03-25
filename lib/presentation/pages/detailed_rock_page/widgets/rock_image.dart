import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:stolby_flutter/presentation/core/app_assets.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:stolby_flutter/presentation/widgets/difficulty_card.dart';

class RockImage extends StatelessWidget {
  final DetailedRockEntity rock;

  const RockImage({
    required this.rock,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
      children: [
        InkWell(
          onTap: () => context.router.push(
            RockViewImageRoute(
              picturePath: rock.picName,
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            child: Image.asset(
              getRockImage(rock.picName),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 16,
          right: 8,
          child: DifficultyCard(
            difficulty: rock.difficulty,
            textSize: 16,
          ),
        ),
      ],
    );
}
