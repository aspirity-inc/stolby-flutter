import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/tables/rocks.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/tables/rocks_localized.dart';

part 'rocks_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'rocks.db'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Rocks, RocksLocalized])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
