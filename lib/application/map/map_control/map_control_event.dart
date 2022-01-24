part of 'map_control_bloc.dart';

@freezed
class MapControlEvent with _$MapControlEvent {
  const factory MapControlEvent.rockMarkerPut(RockMapEntity rock) =
      _RockMarkerPut;
  const factory MapControlEvent.rockMarkerRemoved() = _RockMarkerRemoved;
  const factory MapControlEvent.rockClicked(RockMapEntity rock) = _RockClicked;
  const factory MapControlEvent.clickedRockRemoved() = _ClickedRockRemoved;
  const factory MapControlEvent.handleMarkerSelection(RockMapEntity rock) =
      _HandleMarkerSelection;
}
