import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/dtos/user_location_dto.dart';

@lazySingleton
class LocationService {
  final Location _location;
  LocationService(this._location);

  Future<Either<PermissionFailure, Unit>> checkPermission() async {
    final permissionStatus = await _location.hasPermission();
    switch (permissionStatus) {
      case PermissionStatus.granted:
      case PermissionStatus.grantedLimited:
        return right(unit);
      case PermissionStatus.denied:
        return left(const PermissionFailure.notAsked());
      case PermissionStatus.deniedForever:
        return left(const PermissionFailure.permanentlyDenied());
    }
  }

  Future<Either<PermissionFailure, Unit>> requestLocationPermission() async {
    final permissionStatus = await _location.requestPermission();
    switch (permissionStatus) {
      case PermissionStatus.granted:
      case PermissionStatus.grantedLimited:
        return right(unit);
      case PermissionStatus.denied:
        return left(const PermissionFailure.denied());
      case PermissionStatus.deniedForever:
        return left(const PermissionFailure.permanentlyDenied());
    }
  }

  Future<Either<LocationFailure, Unit>> geolocationService() async {
    bool serviceEnabled = await _location.serviceEnabled();
    if (Platform.isIOS) {
      return !serviceEnabled
          ? left(const LocationFailure.serviceDisabled())
          : right(unit);
    } else {
      if (!serviceEnabled) {
        serviceEnabled = await _location.requestService();
        if (!serviceEnabled) {
          return left(const LocationFailure.serviceDisabled());
        }
      }
    }

    return right(unit);
  }

  Stream<UserLocationDto> getUserLocation() async* {
    yield* _location.onLocationChanged.map<UserLocationDto>(
      (event) => UserLocationDto.fromLocationData(event),
    );
  }
}
