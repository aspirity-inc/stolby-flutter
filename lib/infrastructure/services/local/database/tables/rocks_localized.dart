import 'package:drift/drift.dart';

class RocksLocalized extends Table {
  IntColumn get id => integer()();
  IntColumn get RockId => integer()
      .customConstraint('NOT NULL REFERENCES rocks(id)')
      .named('rock_id')();
  TextColumn get language => text()();
  TextColumn get name => text()();
  TextColumn get ShortInfoo => text().named('short_info')();
  TextColumn get Fullinfo => text().named('full_info')();
  @override
  Set<Column> get primaryKey => {id};
}
