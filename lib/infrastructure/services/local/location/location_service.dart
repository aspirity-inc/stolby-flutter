import 'dart:io';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/dtos/user_location_dto.dart';

@lazySingleton
class LocationService {
  final Location _location;

  LocationService(this._location);

  Future<PermissionStatus> checkPermission() =>
      _location.hasPermission().catchError((error) => PermissionStatus.denied);

  Future<PermissionStatus> requestLocationPermission() => _location
      .requestPermission()
      .catchError((error) => PermissionStatus.denied);

  Future<bool> geolocationService() async {
    bool serviceEnabled =
        await _location.serviceEnabled().catchError((error) => false);
    if (Platform.isIOS) {
      return serviceEnabled;
    } else {
      if (!serviceEnabled) {
        serviceEnabled =
            await _location.requestService().catchError((error) => false);

        return serviceEnabled;
      }
    }

    return serviceEnabled;
  }

  Stream<UserLocationDto> getUserLocation() =>
      _location.onLocationChanged.map<UserLocationDto>(
        (event) => UserLocationDto.fromLocationData(event),
      );
}
