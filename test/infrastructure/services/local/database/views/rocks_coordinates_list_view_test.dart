import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/views/rocks_coordinates_list_view.dart';

void main() {
  group('toDomain()', () {
    test('Should return correct entity', () {
      // arrange
      const initial = RocksCoordinatesListView(
        id: 0,
        localizedName: 'The Granny and the Granddaughter',
        longitude: 92.73843,
        latitude: 55.9174,
        picName: 'pic_babkaivnuchka',
      );
      const expected = RockMapEntity(
        id: 0,
        localizedName: 'The Granny and the Granddaughter',
        longitude: 92.73843,
        latitude: 55.9174,
        picName: 'pic_babkaivnuchka',
      );
      // act
      final result = initial.toDomain();
      // assert
      expect(result, expected);
    });
  });
}
