part of 'location_bloc.dart';

@freezed
class LocationEvent with _$LocationEvent {
  const factory LocationEvent.initailized() = _Initialized;
  const factory LocationEvent.checkedPermission() = _CheckedPermission;
  const factory LocationEvent.subscribedToLocation() = SubscribedToLocation;
  const factory LocationEvent.unsubscribedToLocation() = UnsubscribedToLocation;
}
