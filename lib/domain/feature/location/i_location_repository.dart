import 'package:dartz/dartz.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/infrastructure/services/local/location/dtos/user_location_dto.dart';

abstract class ILocationRepository {
  Future<Either<LocationRepositoryFailure, Unit>> getLocationPermissions();
  Stream<Either<LocationRepositoryFailure, UserLocationDto>>
      startWatchingLocation();
}
