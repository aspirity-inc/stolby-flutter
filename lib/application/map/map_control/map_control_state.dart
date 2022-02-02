part of 'map_control_bloc.dart';

@freezed
class MapControlState with _$MapControlState {
  const factory MapControlState({
    required Option<RockEntity> setMarkerRock,
    required Option<RockEntity> clickedRock,
  }) = _MapControlState;
  factory MapControlState.initial() => MapControlState(
        setMarkerRock: none(),
        clickedRock: none(),
      );
}
