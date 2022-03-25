part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.initialized() = _Initialized;
  const factory MapEvent.zoomChanged(double zoom) = _ZoomChanged;
  const factory MapEvent.angleChanged(double angle) = _AngleChanged;
}
