import 'package:freezed_annotation/freezed_annotation.dart';

part 'full_rock_info.freezed.dart';

@freezed
class FullRockInfo with _$FullRockInfo {
  const factory FullRockInfo({
    required int id,
    required double latitude,
    required double longitude,
    required int difficulty,
    required int height,
    required String picName,
    required String localizedName,
  }) = _FullRockInfo;
}
