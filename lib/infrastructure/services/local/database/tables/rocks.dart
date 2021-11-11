import 'package:drift/drift.dart';

class Rocks extends Table {
  IntColumn get id => integer()();
  RealColumn get latitude => real()();
  RealColumn get longitude => real()();
  IntColumn get height => integer()();
  IntColumn get difficulty => integer()();
  TextColumn get pic_name => text().named('PicName')();
  @override
  Set<Column> get primaryKey => {id};
}
