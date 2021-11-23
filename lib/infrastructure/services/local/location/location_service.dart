import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/dtos/user_location_dto.dart';

@lazySingleton
class LocationService {
  final Location _location;
  LocationService(this._location);

  Future<PermissionStatus> checkPermission() async =>
      await _location.hasPermission();

  Future<PermissionStatus> requestLocationPermission() async =>
      await _location.requestPermission();

  Future<bool> geolocationService() async {
    bool serviceEnabled = await _location.serviceEnabled();
    if (Platform.isIOS) {
      return serviceEnabled;
    } else {
      if (!serviceEnabled) {
        serviceEnabled = await _location.requestService();

        return serviceEnabled;
      }
    }

    return serviceEnabled;
  }

  Stream<UserLocationDto> getUserLocation() async* {
    yield* _location.onLocationChanged.map<UserLocationDto>(
      (event) => UserLocationDto.fromLocationData(event),
    );
  }
}
