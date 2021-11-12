import 'package:dartz/dartz.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';

abstract class IMapRepository {
  Future<Either<DatabaseFailure, List<RockMapEntity>>>
      getRocksCoordinatesList();
}
