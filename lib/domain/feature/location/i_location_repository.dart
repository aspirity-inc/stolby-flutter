import 'package:dartz/dartz.dart';
import 'package:stolby_flutter/domain/core/failures.dart';

import 'entities/user_location_entity.dart';

abstract class ILocationRepository {
  Future<Either<LocationFailure, Unit>> getLocationPermissions();
  Stream<Either<LocationFailure, UserLocationEntity>> startWatchingLocation();
}
