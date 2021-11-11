import 'package:drift/drift.dart';

class Rocks extends Table {
  IntColumn get id => integer()();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
  IntColumn get height => integer()();
  TextColumn get PicName => text().named('pic_name')();
  @override
  Set<Column> get primaryKey => {id};
}
