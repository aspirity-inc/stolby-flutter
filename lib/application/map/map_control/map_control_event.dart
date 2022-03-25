part of 'map_control_bloc.dart';

@freezed
class MapControlEvent with _$MapControlEvent {
  const factory MapControlEvent.rockMarkerPut(RockEntity rock) = _RockMarkerPut;
  const factory MapControlEvent.rockMarkerRemoved() = _RockMarkerRemoved;
  const factory MapControlEvent.rockClicked(RockEntity rock) = _RockClicked;
  const factory MapControlEvent.clickedRockRemoved() = _ClickedRockRemoved;
  const factory MapControlEvent.handleMarkerSelection(RockEntity rock) =
      _HandleMarkerSelection;
}
