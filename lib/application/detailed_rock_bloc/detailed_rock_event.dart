part of 'detailed_rock_bloc.dart';

@freezed
class DetailedRockEvent with _$DetailedRockEvent {
  const factory DetailedRockEvent.initialized({
    required int id,
  }) = _Initialized;
  const factory DetailedRockEvent.locationChanged({
    required LatLng location,
  }) = _LocationChanged;
}
