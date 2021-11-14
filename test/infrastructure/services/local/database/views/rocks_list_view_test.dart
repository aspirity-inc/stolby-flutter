import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_list_item_entity.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/views/rocks_list_view.dart';

void main() {
  group('toDomain()', () {
    test('Should return correct entity', () {
      // arrange
      const initial = RocksListView(
        id: 0,
        difficulty: 1,
        localizedName: 'The Granny and the Granddaughter',
        longitude: 92.73843,
        latitude: 55.9174,
        height: 40,
        picName: 'pic_babkaivnuchka',
      );
      const expected = RockListItemEntity(
        id: 0,
        difficulty: 1,
        localizedName: 'The Granny and the Granddaughter',
        longitude: 92.73843,
        latitude: 55.9174,
        height: 40,
        picName: 'pic_babkaivnuchka',
      );
      // act
      final result = initial.toDomain();
      // assert
      expect(result, expected);
    });
  });
}
