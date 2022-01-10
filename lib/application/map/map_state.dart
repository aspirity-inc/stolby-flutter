part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    required List<RockMapEntity> rocks,
    required bool loading,
    required double zoom,
    required double angle,
    required Option<RockMapEntity> setMarkerRock,
    required Option<RockMapEntity> clickedRock,
  }) = _MapState;
  factory MapState.initial() => MapState(
        rocks: [],
        loading: false,
        zoom: 13,
        angle: 0,
        setMarkerRock: none(),
        clickedRock: none(),
      );
}
