part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required bool hasPermission,
    required Option<Either<LocationFailure, UserLocationEntity>> valueFailure,
  }) = _LocationState;

  factory LocationState.initial() => LocationState(
        hasPermission: false,
        valueFailure: none(),
      );
}
