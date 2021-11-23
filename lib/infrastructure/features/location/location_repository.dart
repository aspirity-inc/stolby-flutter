import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
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
  Future<Either<LocationRepositoryFailure, Unit>>
      getLocationPermissions() async {
    final checkService = await _service.geolocationService();
    if (checkService.isLeft()) {
      return checkService.fold(
        (l) => left(const LocationRepositoryFailure.disabled()),
        (r) => throw Error(),
      );
    }
    final checkPermissions = await _service.checkPermission();
    final needToRequest = checkPermissions.fold(
      (l) => l == const PermissionFailure.notAsked() ? true : false,
      (r) => false,
    );
    if (checkPermissions.isLeft() && !needToRequest) {
      return checkPermissions.fold(
        (l) => left(const LocationRepositoryFailure.notGranted()),
        (r) => throw Error(),
      );
    }
    if (needToRequest) {
      final requestResult = await _service.requestLocationPermission();
      if (requestResult.isLeft()) {
        return requestResult.fold(
          (l) => left(const LocationRepositoryFailure.notGranted()),
          (r) => throw Error,
        );
      }
    }

    return right(unit);
  }

  @override
  Stream<Either<LocationRepositoryFailure, UserLocationDto>>
      startWatchingLocation() async* {
    final permissions = await getLocationPermissions();
    if (permissions.isLeft()) {
      yield permissions.fold((l) => left(l), (r) => throw Error());
    }
    yield* _service
        .getUserLocation()
        .map<Either<LocationRepositoryFailure, UserLocationDto>>(
          (event) => right(event),
        )
        .debounceTime(
          const Duration(milliseconds: 300),
        )
        .onErrorReturn(left(const LocationRepositoryFailure.unexpected()));
  }
}
