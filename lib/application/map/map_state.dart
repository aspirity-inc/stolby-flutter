part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    required List<RockEntity> rocks,
    required bool loading,
    required double zoom,
    required double angle,
  }) = _MapState;
  factory MapState.initial() => const MapState(
        rocks: [],
        loading: false,
        zoom: 13,
        angle: 0,
      );
}
