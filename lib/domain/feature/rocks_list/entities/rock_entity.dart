import 'package:freezed_annotation/freezed_annotation.dart';

part 'rock_entity.freezed.dart';

@freezed
class RockEntity with _$RockEntity {
  const factory RockEntity({
    required int id,
    required double latitude,
    required double longitude,
    required int difficulty,
    required int height,
    required String picName,
    required String localizedName,
  }) = _RockEntity;
}
