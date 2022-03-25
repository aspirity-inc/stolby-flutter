import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_location_entity.freezed.dart';

@freezed
class UserLocationEntity with _$UserLocationEntity {
  const factory UserLocationEntity({
    required double latitude,
    required double longitude,
    required double heading,
  }) = _UserLocationEntity;
}
