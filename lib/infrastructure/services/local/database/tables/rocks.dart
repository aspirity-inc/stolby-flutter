import 'package:drift/drift.dart';

class Rocks extends Table {
  IntColumn get id => integer()();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
  IntColumn get height => integer()();
  IntColumn get difficulty => integer()();
  TextColumn get picName => text().named('pic_name')();
  @override
  Set<Column> get primaryKey => {id};
}
