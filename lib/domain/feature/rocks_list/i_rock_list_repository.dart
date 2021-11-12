import 'package:dartz/dartz.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_list_item_entity.dart';

abstract class IRockListRepository {
  Future<Either<DatabaseFailure, List<RockListItemEntity>>> getRocksList();
  Future<Either<DatabaseFailure, DetailedRockEntity>> getSingleRock(
    int id,
  );
}