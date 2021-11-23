part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required bool hasPermission,
    required bool loading,
    required bool permissionAsked,
    required Option<Either<LocationFailure, UserLocationEntity>>
        failureOrLocation,
  }) = _LocationState;

  factory LocationState.initial() => LocationState(
        hasPermission: false,
        permissionAsked: false,
        loading: false,
        failureOrLocation: none(),
      );
}
