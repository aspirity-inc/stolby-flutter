part of 'rock_list_bloc.dart';

@freezed
class RockListEvent with _$RockListEvent {
  const factory RockListEvent.initialized() = _Initialized;
  const factory RockListEvent.searchStringChanged({
    required String searchString,
  }) = _SearchStringChanged;
  const factory RockListEvent.filtered() = _Filtered;
  const factory RockListEvent.sorted({
    required LatLng location,
  }) = _Sorted;
  const factory RockListEvent.locationChanged({
    required LatLng location,
  }) = _LocationChanged;
  const factory RockListEvent.searchLineCleared() = _SearchLineCleared;
}
