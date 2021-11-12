import 'package:dartz/dartz.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/full_rock_info.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rocks_list_item.dart';

abstract class IRocksListRepository {
  Future<Either<DatabaseFailure, List<RocksListItem>>> getRocksList(
    String language,
  );
  Future<Either<DatabaseFailure, List<FullRockInfo>>> getSingleRock(
    String language,
    int id,
  );
}
