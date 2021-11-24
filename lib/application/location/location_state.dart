part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required bool hasPermission,
    required bool permissionAsked,
    required Option<LocationFailure> failureOption,
    required Option<UserLocationEntity> userLocation,
  }) = _LocationState;

  factory LocationState.initial() => LocationState(
        hasPermission: false,
        permissionAsked: false,
        failureOption: none(),
        userLocation: none(),
      );
}
