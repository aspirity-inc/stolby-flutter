import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_list_item_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/i_rock_list_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/app_database.dart';

@LazySingleton(as: IRockListRepository)
class RockListRepository implements IRockListRepository {
  final AppDatabase db;

  RockListRepository(this.db);

  @override
  Future<Either<DatabaseFailure, List<RockListItemEntity>>>
      getRocksList() async {
    try {
      final language = Intl.getCurrentLocale().split('_')[0];
      final result = await db.getRocksList(language);

      return right(
        result
            .map(
              (e) => e.toDomain(),
            )
            .toList(),
      );
    } on PlatformException {
      return left(const DatabaseFailure.notFound());
    }
  }

  @override
  Future<Either<DatabaseFailure, DetailedRockEntity>> getSingleRock(
    int id,
  ) async {
    try {
      final language = Intl.getCurrentLocale().split('_')[0];
      final result = await db.getSingleRock(language, id);

      return right(result.toDomain());
    } on PlatformException {
      return left(const DatabaseFailure.notFound());
    }
  }
}