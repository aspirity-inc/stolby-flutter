import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';

part 'detailed_rock_entity.freezed.dart';

@freezed
class DetailedRockEntity with _$DetailedRockEntity {
  const DetailedRockEntity._();

  const factory DetailedRockEntity({
    required int id,
    required double latitude,
    required double longitude,
    required int difficulty,
    required int height,
    required String picName,
    required String localizedName,
    required String shortInfo,
    required String fullInfo,
  }) = _DetailedRockEntity;

  RockEntity toRockEntity() => RockEntity(
        id: id,
        latitude: latitude,
        longitude: longitude,
        difficulty: difficulty,
        height: height,
        picName: picName,
        localizedName: localizedName,
      );
}
