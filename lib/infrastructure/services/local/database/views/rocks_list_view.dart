import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_list_item_entity.dart';

class RocksListView {
  final int id;
  final double latitude;
  final double longitude;
  final int difficulty;
  final int height;
  final String picName;
  final String localizedName;

  RocksListView({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.difficulty,
    required this.height,
    required this.picName,
    required this.localizedName,
  });

  RockListItemEntity toDomain() => RockListItemEntity(
        id: id,
        latitude: latitude,
        longitude: longitude,
        difficulty: difficulty,
        height: height,
        picName: picName,
        localizedName: localizedName,
      );
}
