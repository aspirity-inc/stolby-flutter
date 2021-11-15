part of 'single_rock_bloc.dart';

@freezed
class SingleRockEvent with _$SingleRockEvent {
  const factory SingleRockEvent.initialized({
    required int id,
  }) = _Initialized;
  const factory SingleRockEvent.locationChanged({
    required LatLng location,
  }) = _LocationChanged;
}
