import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_list_item_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocks_list_view.freezed.dart';

@freezed
class RocksListView with _$RocksListView {

  const RocksListView._();

  const factory RocksListView({
    required int id,
    required double latitude,
    required double longitude,
    required int difficulty,
    required int height,
    required String picName,
    required String localizedName,
  }) = _RocksListView;

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
