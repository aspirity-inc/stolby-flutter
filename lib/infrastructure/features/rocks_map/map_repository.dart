import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/i_map_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/app_database.dart';

@LazySingleton(as: IMapRepository)
class MapRepository implements IMapRepository {
  final AppDatabase db;

  MapRepository(this.db);

  @override
  Future<Either<DatabaseFailure, List<RockMapEntity>>>
      getRocksCoordinatesList() async {
    try {
      final language = Platform.localeName.split('_')[0];
      final result = await db.getRocksCoordinatesList(
        language == 'ru' ? 'ru' : 'en',
      );

      return right(
        result
            .map(
              (e) => e.toDomain(),
            )
            .toList(),
      );
    } catch (_) {
      return left(const DatabaseFailure.notFound());
    }
  }
}
