import 'package:drift/drift.dart';

class RocksLocalized extends Table {
  IntColumn get id => integer()();
  IntColumn get rockId =>
      integer().customConstraint('NOT NULL REFERENCES rocks(id)').named('rock_id')();
  TextColumn get language => text()();
  TextColumn get name => text()();
  TextColumn get shortInfo => text().named('short_info')();
  TextColumn get fullInfo => text().named('full_info')();
  @override
  Set<Column> get primaryKey => {id};
}
