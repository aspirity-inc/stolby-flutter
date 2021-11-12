import 'package:freezed_annotation/freezed_annotation.dart';

part 'rock_map_info.freezed.dart';

@freezed
class RockMapInfo with _$RockMapInfo {
  const factory RockMapInfo({
    required int id,
    required double latitude,
    required double longitude,
    required String picName,
    required String localizedName,
  }) = _RockMapInfo;
}
