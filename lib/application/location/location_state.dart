part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required bool hasPermission,
    required bool isChecking,
    required Option<Either<LocationFailure, UserLocationEntity>>
        failureOrLocation,
  }) = _LocationState;

  factory LocationState.initial() => LocationState(
        hasPermission: false,
        isChecking: false,
        failureOrLocation: none(),
      );
}
