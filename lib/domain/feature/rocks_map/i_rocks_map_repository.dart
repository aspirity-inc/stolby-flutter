import 'package:dartz/dartz.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_info.dart';

abstract class IRocksMapRepository {
  Future<Either<DatabaseFailure, List<RockMapInfo>>> getRocksCoordinatesList(
    String language,
  );
}
