import 'package:freezed_annotation/freezed_annotation.dart';

part 'rock_map_entity.freezed.dart';

@freezed
class RockMapEntity with _$RockMapEntity {
  const factory RockMapEntity({
    required int id,
    required double latitude,
    required double longitude,
    required String picName,
    required String localizedName,
  }) = _RockMapEntity;
}
