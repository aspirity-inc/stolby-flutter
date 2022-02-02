import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_rock_view.freezed.dart';

@freezed
class DetailedRockView with _$DetailedRockView {
  const DetailedRockView._();

  const factory DetailedRockView({
    required int id,
    required double latitude,
    required double longitude,
    required int difficulty,
    required int height,
    required String picName,
    required String localizedName,
    required String shortInfo,
    required String fullInfo,
  }) = _DetailedRockView;

  DetailedRockEntity toDomain() => DetailedRockEntity(
        id: id,
        latitude: latitude,
        longitude: longitude,
        difficulty: difficulty,
        height: height,
        picName: picName,
        localizedName: localizedName,
        shortInfo: shortInfo,
        fullInfo: fullInfo,
      );
}
