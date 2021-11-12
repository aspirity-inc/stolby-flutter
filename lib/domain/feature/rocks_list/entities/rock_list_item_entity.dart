import 'package:freezed_annotation/freezed_annotation.dart';

part 'rock_list_item_entity.freezed.dart';

@freezed
class RockListItemEntity with _$RockListItemEntity {
  const factory RockListItemEntity({
    required int id,
    required double latitude,
    required double longitude,
    required int difficulty,
    required int height,
    required String picName,
    required String localizedName,
  }) = _RockListItemEntity;
}
