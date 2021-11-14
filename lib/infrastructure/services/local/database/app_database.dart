import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/tables/rocks.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/tables/rocks_localized.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/views/rocks_coordinates_list_view.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/views/rocks_list_view.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/views/single_rock_view.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'rocks.db'));

    return NativeDatabase(file);
  });
}

@lazySingleton
@DriftDatabase(tables: [Rocks, RocksLocalized])
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor qe) : super(qe);

  @factoryMethod
  factory AppDatabase.open() => AppDatabase(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<RocksListView>> getRocksList(String language) async {
    final query = select(rocks).join(
      [
        leftOuterJoin(
          rocksLocalized,
          rocksLocalized.rockId.equalsExp(rocks.id),
        ),
      ],
    )..where(
        rocksLocalized.language.equals(language),
      );
    final result = await query.get();

    return result
        .map(
          (row) => RocksListView(
            id: row.readTable(rocks).id,
            latitude: row.readTable(rocks).latitude,
            longitude: row.readTable(rocks).longitude,
            difficulty: row.readTable(rocks).difficulty,
            height: row.readTable(rocks).height,
            picName: row.readTable(rocks).picName,
            localizedName: row.readTable(rocksLocalized).name,
          ),
        )
        .toList();
  }

  Future<List<RocksCoordinatesListView>> getRocksCoordinatesList(
    String language,
  ) async {
    final query = select(rocks).join(
      [
        leftOuterJoin(
          rocksLocalized,
          rocksLocalized.rockId.equalsExp(rocks.id),
        ),
      ],
    )..where(
        rocksLocalized.language.equals(language),
      );
    final result = await query.get();

    return result
        .map(
          (row) => RocksCoordinatesListView(
            id: row.readTable(rocks).id,
            latitude: row.readTable(rocks).latitude,
            longitude: row.readTable(rocks).longitude,
            picName: row.readTable(rocks).picName,
            localizedName: row.readTable(rocksLocalized).name,
          ),
        )
        .toList();
  }

  Future<SingleRockView> getSingleRock(
    String language,
    int id,
  ) async {
    final query = select(rocks).join(
      [
        leftOuterJoin(
          rocksLocalized,
          rocksLocalized.rockId.equalsExp(rocks.id),
        ),
      ],
    )..where(
        rocks.id.equals(id) & rocksLocalized.language.equals(language),
      );
    final result = await query.getSingle();

    return SingleRockView(
      id: result.readTable(rocks).id,
      latitude: result.readTable(rocks).latitude,
      longitude: result.readTable(rocks).longitude,
      difficulty: result.readTable(rocks).difficulty,
      height: result.readTable(rocks).height,
      picName: result.readTable(rocks).picName,
      localizedName: result.readTable(rocksLocalized).name,
      shortInfo: result.readTable(rocksLocalized).shortInfo,
      fullInfo: result.readTable(rocksLocalized).fullInfo,
    );
  }
}
