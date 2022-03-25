import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/dtos/user_location_dto.dart';

@lazySingleton
class LocationService {
  final Location _location;

  LocationService(this._location);

  Future<PermissionStatus> checkPermission() => _location.hasPermission();

  Future<PermissionStatus> requestLocationPermission() =>
      _location.requestPermission();

  Future<bool> geolocationService() async {
    final serviceEnabled = await _location.serviceEnabled();
    if (Platform.isIOS) {
      return serviceEnabled;
    } else {
      if (!serviceEnabled) {
        return _location.requestService();
      }
    }

    return serviceEnabled;
  }

  Stream<UserLocationDto> getUserLocation() =>
      _location.onLocationChanged.map<UserLocationDto>(
        (event) => UserLocationDto.fromLocationData(event),
      );
}
