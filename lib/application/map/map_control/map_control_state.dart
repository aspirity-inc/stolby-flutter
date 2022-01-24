part of 'map_control_bloc.dart';

@freezed
class MapControlState with _$MapControlState {
  const factory MapControlState({
    required Option<RockMapEntity> setMarkerRock,
    required Option<RockMapEntity> clickedRock,
  }) = _MapControlState;
  factory MapControlState.initial() => MapControlState(
        setMarkerRock: none(),
        clickedRock: none(),
      );
}
