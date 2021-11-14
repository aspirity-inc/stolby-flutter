import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';
import 'package:stolby_flutter/infrastructure/features/rocks_map/map_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/app_database.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/views/rocks_coordinates_list_view.dart';

import 'map_repository_test.mocks.dart';

@GenerateMocks([AppDatabase])
void main() {
  late MockAppDatabase _db;
  late MapRepository _repository;

  setUp(() {
    _db = MockAppDatabase();
    _repository = MapRepository(_db);
  });

  group('getRocksCoordinatesList()', () {
    test('Should get list of entities', () async {
      // arrange
      when(_db.getRocksCoordinatesList(any)).thenAnswer(
        (_) async => [
          const RocksCoordinatesListView(
            id: 0,
            localizedName: 'The Granny and the Granddaughter',
            longitude: 92.73843,
            latitude: 55.9174,
            picName: 'pic_babkaivnuchka',
          ),
        ],
      );
      // act
      final result = await _repository.getRocksCoordinatesList();
      // assert
      verify(_db.getRocksCoordinatesList('en'));
      expect(
        result.isRight(),
        true,
      );
      expect(
        result.fold((l) => null, (r) => r[0]),
        const RockMapEntity(
          id: 0,
          latitude: 55.9174,
          longitude: 92.73843,
          picName: 'pic_babkaivnuchka',
          localizedName: 'The Granny and the Granddaughter',
        ),
      );
    });

    test('Should return error', () async {
      // arrange
      when(_db.getRocksCoordinatesList(any)).thenThrow(
        PlatformException(code: '404'),
      );
      // act
      final result = await _repository.getRocksCoordinatesList();
      // assert
      verify(_db.getRocksCoordinatesList('en'));
      expect(
        result.isLeft(),
        true,
      );
      expect(
        result,
        left(const DatabaseFailure.notFound()),
      );
    });
  });
}
