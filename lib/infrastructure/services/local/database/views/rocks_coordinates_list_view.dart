import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';

class RocksCoordinatesListView {
  final int id;
  final double latitude;
  final double longitude;
  final String picName;
  final String localizedName;

  RocksCoordinatesListView({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.picName,
    required this.localizedName,
  });

  RockMapEntity toDomain() => RockMapEntity(
        id: id,
        latitude: latitude,
        longitude: longitude,
        picName: picName,
        localizedName: localizedName,
      );
}
