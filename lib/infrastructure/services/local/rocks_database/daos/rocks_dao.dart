import 'package:drift/drift.dart';
import 'package:stolby_flutter/infrastructure/services/local/rocks_database/rocks_database.dart';
import 'package:stolby_flutter/infrastructure/services/local/rocks_database/tables/rocks.dart';
import 'package:stolby_flutter/infrastructure/services/local/rocks_database/tables/rocks_localized.dart';

part 'rocks_dao.g.dart';

@DriftAccessor(tables: [Rocks, RocksLocalized])
class RocksDao extends DatabaseAccessor<AppDatabase> with _$RocksDaoMixin {
  RocksDao(AppDatabase attachedDatabase) : super(attachedDatabase);
}
