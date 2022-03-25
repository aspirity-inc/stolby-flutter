import 'package:dartz/dartz.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';

abstract class IRockListRepository {
  Future<Either<DatabaseFailure, List<RockEntity>>> getRocksList();
  Future<Either<DatabaseFailure, DetailedRockEntity>> getSingleRock(
    int id,
  );
}
