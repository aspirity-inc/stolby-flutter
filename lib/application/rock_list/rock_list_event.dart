part of 'rock_list_bloc.dart';

@freezed
class RockListEvent with _$RockListEvent {
  const factory RockListEvent.initialized() = _Initialized;
  const factory RockListEvent.searchLineChanged({
    required String searchLineString,
  }) = _SearchLineChanged;
  const factory RockListEvent.filtered({
    required int difficulty,
  }) = _Filtered;
  const factory RockListEvent.sorted({
    required LatLng location,
  }) = _Sorted;
  const factory RockListEvent.locationChanged({
    required LatLng location,
  }) = _LocationChanged;
  const factory RockListEvent.searchLineCleared() = _SearchLineCleared;
}
