import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/tables/rocks.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/tables/rocks_localized.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/views/rocks_list_view.dart';

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'rocks.db'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Rocks, RocksLocalized])
@LazySingleton()
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

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
        rocksLocalized.language.like(language),
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
}
