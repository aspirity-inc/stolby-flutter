import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/location/i_location_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/dtos/user_location_dto.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/location_service.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ILocationRepository)
class LocationRepository implements ILocationRepository {
  final LocationService _service;

  LocationRepository(this._service);

  @override
  Future<Either<LocationFailure, Unit>> getLocationPermissions() async {
    final permission = await _service.checkPermission();
    switch (permission) {
      case PermissionStatus.granted:
        return right(unit);
      case PermissionStatus.grantedLimited:
        return right(unit);
      case PermissionStatus.deniedForever:
        return left(const LocationFailure.notGranted());
      case PermissionStatus.denied:
        break;
      default:
        return right(unit);
    }
    final permissionRequest = await _service.requestLocationPermission();
    switch (permissionRequest) {
      case PermissionStatus.granted:
        return right(unit);
      case PermissionStatus.grantedLimited:
        return right(unit);
      case PermissionStatus.deniedForever:
        return left(const LocationFailure.notGranted());
      case PermissionStatus.denied:
        return left(const LocationFailure.notGranted());
      default:
        return left(const LocationFailure.unexpected());
    }
  }

  @override
  Stream<Either<LocationFailure, UserLocationDto>>
      startWatchingLocation() async* {
    final service = await _service.geolocationService();
    if (!service) {
      yield left(LocationFailure.disabledService());
    }
    final permissions = await getLocationPermissions();
    if (permissions.isLeft()) {
      yield permissions.fold((l) => left(l), (r) => throw Error());
    }

    yield* _service
        .getUserLocation()
        .map<Either<LocationFailure, UserLocationDto>>(
          (event) => right(event),
        )
        .debounceTime(
          const Duration(milliseconds: 300),
        )
        .onErrorReturn(left(const LocationFailure.unexpected()));
  }
}