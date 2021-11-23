import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:location/location.dart';
import 'package:stolby_flutter/domain/feature/location/entities/user_location_entity.dart';

part 'user_location_dto.freezed.dart';

@freezed
class UserLocationDto with _$UserLocationDto {
  const UserLocationDto._();
  const factory UserLocationDto({
    required double latitude,
    required double longitude,
    required double heading,
  }) = _UserLocationDto;

  static UserLocationDto fromLocationData(LocationData locationData) =>
      UserLocationDto(
        latitude: locationData.latitude ?? 0,
        longitude: locationData.longitude ?? 0,
        heading: locationData.heading ?? 0,
      );

  UserLocationEntity toDomain() => UserLocationEntity(
        latitude: latitude,
        longitude: longitude,
        heading: heading,
      );
}
