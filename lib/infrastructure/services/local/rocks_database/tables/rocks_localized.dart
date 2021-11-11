import 'package:drift/drift.dart';

class RocksLocalized extends Table {
  IntColumn get id => integer()();
  IntColumn get rock_id => integer()
      .customConstraint('NOT NULL REFERENCES rocks(id)')
      .named('RockId')();
  TextColumn get language => text()();
  TextColumn get short_info => text().named('ShortInfo')();
  TextColumn get full_info => text().named('FullInfo')();
  @override
  Set<Column> get primaryKey => {id};
}
