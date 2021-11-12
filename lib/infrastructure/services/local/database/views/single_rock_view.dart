import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';

class SingleRockView {
  final int id;
  final double latitude;
  final double longitude;
  final int difficulty;
  final int height;
  final String picName;
  final String localizedName;
  final String shortInfo;
  final String fullInfo;
  SingleRockView({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.difficulty,
    required this.height,
    required this.picName,
    required this.localizedName,
    required this.shortInfo,
    required this.fullInfo,
  });

  DetailedRockEntity toDomain() => DetailedRockEntity(
        id: id,
        latitude: latitude,
        longitude: longitude,
        difficulty: difficulty,
        height: height,
        picName: picName,
        localizedName: localizedName,
        shortInfo: shortInfo,
        fullInfo: fullInfo,
      );
}
