import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_rock_entity.freezed.dart';

@freezed
class DetailedRockEntity with _$DetailedRockEntity {
  const factory DetailedRockEntity({
    required int id,
    required double latitude,
    required double longitude,
    required int difficulty,
    required int height,
    required String picName,
    required String localizedName,
  }) = _DetailedRockEntity;
}
