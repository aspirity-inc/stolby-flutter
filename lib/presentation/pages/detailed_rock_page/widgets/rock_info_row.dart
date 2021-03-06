import 'package:flutter/material.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/distance_to_rock.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/rock_coordinates.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/rock_elevation.dart';

class RockInfoRow extends StatelessWidget {
  final DetailedRockEntity rock;
  final double? distance;

  const RockInfoRow({
    required this.rock,
    required this.distance,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DistanceToRock(
            distance: distance,
          ),
          RockElevation(height: rock.height),
          RockCoordinates(
            id: rock.id,
            latitude: rock.latitude,
            longitude: rock.longitude,
            localizedName: rock.localizedName,
          ),
        ],
      );
}
