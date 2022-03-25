part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.checkedPermission() = _CheckedPermission;
  const factory LocationEvent.startWatchingLocation() = _StartWatchingLocation;
  const factory LocationEvent.stopWatchingLocation() = _StopWatchingLocation;
  const factory LocationEvent.locationReceived({
    required Either<LocationFailure, UserLocationEntity> location,
  }) = _LocationReceived;
}
