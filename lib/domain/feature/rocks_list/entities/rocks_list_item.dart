import 'package:freezed_annotation/freezed_annotation.dart';

part 'rocks_list_item.freezed.dart';

@freezed
class RocksListItem with _$RocksListItem {
  const factory RocksListItem({
    required int id,
    required double latitude,
    required double longitude,
    required int difficulty,
    required int height,
    required String picName,
    required String localizedName,
  }) = _RocksListItem;
}
