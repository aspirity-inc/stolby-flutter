import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocks_coordinates_list_view.freezed.dart';

@freezed
class RocksCoordinatesListView with _$RocksCoordinatesListView {

  const RocksCoordinatesListView._();

  const factory RocksCoordinatesListView({
    required int id,
    required double latitude,
    required double longitude,
    required String picName,
    required String localizedName,
  }) = _RocksCoordinatesListView;

  RockMapEntity toDomain() => RockMapEntity(
        id: id,
        latitude: latitude,
        longitude: longitude,
        picName: picName,
        localizedName: localizedName,
      );
}
