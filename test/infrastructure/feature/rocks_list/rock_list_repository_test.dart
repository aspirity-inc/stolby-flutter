import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:stolby_flutter/infrastructure/features/rocks_list/rock_list_repository.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/app_database.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/views/rocks_list_view.dart';
import 'package:stolby_flutter/infrastructure/services/local/database/views/single_rock_view.dart';

void main() {}
/*
import 'rock_list_repository_test.mocks.dart';

@GenerateMocks(
  [],
  customMocks: [
    MockSpec<AppDatabase>(
      as: Symbol('MockAppDatabase'),
      returnNullOnMissingStub: true,
    ),
  ],
)
void main() {
  late MockAppDatabase _db;
  late RockListRepository _repository;

  setUp(() {
    _db = MockAppDatabase();
    _repository = RockListRepository(_db);
  });

  group('getRocksList()', () {
    test('Should get list of entities', () async {
      // arrange
      when(_db.getRocksList(any)).thenAnswer(
        (_) async => [
          const RocksListView(
            id: 0,
            localizedName: 'The Granny and the Granddaughter',
            longitude: 92.73843,
            latitude: 55.9174,
            picName: 'pic_babkaivnuchka',
            height: 40,
            difficulty: 1,
          ),
        ],
      );
      // act
      final result = await _repository.getRocksList();
      // assert
      verify(_db.getRocksList('en'));
      expect(
        result.isRight(),
        true,
      );
      expect(
        result.fold((l) => null, (r) => r[0]),
        const RockListItemEntity(
          id: 0,
          latitude: 55.9174,
          longitude: 92.73843,
          picName: 'pic_babkaivnuchka',
          localizedName: 'The Granny and the Granddaughter',
          height: 40,
          difficulty: 1,
        ),
      );
    });

    test('Should return error', () async {
      // arrange
      when(_db.getRocksList(any)).thenThrow(
        PlatformException(code: '404'),
      );
      // act
      final result = await _repository.getRocksList();
      // assert
      verify(_db.getRocksList('en'));
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

  group('getSingleRock(0)', () {
    test('Should get list of entities', () async {
      // arrange
      when(_db.getSingleRock(any, any)).thenAnswer(
        (_) async => const SingleRockView(
          id: 0,
          difficulty: 1,
          localizedName: 'The Granny and the Granddaughter',
          longitude: 92.73843,
          latitude: 55.9174,
          height: 40,
          picName: 'pic_babkaivnuchka',
          fullInfo:
              'The Granny and the Granddaughter (Russian: Бабка и Внучка, Babka i Vnuchka) are up to 40 meter high rocks in Aesthetic (Central) area of Stolby nature reserve. They are located above the Central (Circular) pathway, on a straight line (West-East) between the First Pillar (Russian: Первый столб, Pervy Stolb) and the Granddad. The Granny and the Granddaughter together with the Granddad are one of the most photogenic sites of the reserve. Their name came from their location near the rock Granddad. From the southern side the rocks look like gigantic chess pieces; the smaller (western) rock resembles Buratino, the main character of A. Tolstoy’s children’s book. From the northern slope the rocks resemble, on the one part, the figure of a snub-nosed granddaughter wearing a kerchief bended on her forehead and sticking up her nose in front of her granny, and a frowning and gloomy granny wearing a kerchief with a knot on the crown of her head, on the other part. In the autumn, when the leaves fall off, it allows to see the rock Granddad from here, which completes the rock composition entitled Tea Party at Stolby (Russian: Чаепитие на Столбах, Chaepitie na Stolbakh). Traces of quarrying dating back to 1913 are preserved under the northern side of the rock Granny. Routes for rock climbing competitions were laid along the sides of the rocks Granny and Granddaughter in the early 1960s; back then they were considered the benchmark among such routes. These rocks are surrounded by scenic nature and tranquil atmosphere. The Granny and the Granddaughter together with Granddad are one of the most photogenic sites of the reserve, however, they are of almost no interest sport-wise. In any event, it does not make their natural grandeur and beauty any less significant. The Granny and the Granddaughter are definitely worth a visit.',
          shortInfo:
              'The Granny and the Granddaughter (Russian: Бабка и Внучка, Babka i Vnuchka) are up to 40 meter high rocks in Aesthetic (Central) area of Stolby nature reserve. They are located above the Central (Circular) pathway, on a straight line (West-East) between the First Pillar (Russian: Первый Столб, Pervy Stolb) and the Granddad (Russian: Дед, Ded). The Granny and the Granddaughter together with the Granddad are one of the most photogenic sites of the reserve.',
        ),
      );
      // act
      final result = await _repository.getSingleRock(0);
      // assert
      verify(_db.getSingleRock('en', 0));
      expect(
        result.isRight(),
        true,
      );
      expect(
        result.fold((l) => null, (r) => r),
        const DetailedRockEntity(
          id: 0,
          difficulty: 1,
          localizedName: 'The Granny and the Granddaughter',
          longitude: 92.73843,
          latitude: 55.9174,
          height: 40,
          picName: 'pic_babkaivnuchka',
          fullInfo:
              'The Granny and the Granddaughter (Russian: Бабка и Внучка, Babka i Vnuchka) are up to 40 meter high rocks in Aesthetic (Central) area of Stolby nature reserve. They are located above the Central (Circular) pathway, on a straight line (West-East) between the First Pillar (Russian: Первый столб, Pervy Stolb) and the Granddad. The Granny and the Granddaughter together with the Granddad are one of the most photogenic sites of the reserve. Their name came from their location near the rock Granddad. From the southern side the rocks look like gigantic chess pieces; the smaller (western) rock resembles Buratino, the main character of A. Tolstoy’s children’s book. From the northern slope the rocks resemble, on the one part, the figure of a snub-nosed granddaughter wearing a kerchief bended on her forehead and sticking up her nose in front of her granny, and a frowning and gloomy granny wearing a kerchief with a knot on the crown of her head, on the other part. In the autumn, when the leaves fall off, it allows to see the rock Granddad from here, which completes the rock composition entitled Tea Party at Stolby (Russian: Чаепитие на Столбах, Chaepitie na Stolbakh). Traces of quarrying dating back to 1913 are preserved under the northern side of the rock Granny. Routes for rock climbing competitions were laid along the sides of the rocks Granny and Granddaughter in the early 1960s; back then they were considered the benchmark among such routes. These rocks are surrounded by scenic nature and tranquil atmosphere. The Granny and the Granddaughter together with Granddad are one of the most photogenic sites of the reserve, however, they are of almost no interest sport-wise. In any event, it does not make their natural grandeur and beauty any less significant. The Granny and the Granddaughter are definitely worth a visit.',
          shortInfo:
              'The Granny and the Granddaughter (Russian: Бабка и Внучка, Babka i Vnuchka) are up to 40 meter high rocks in Aesthetic (Central) area of Stolby nature reserve. They are located above the Central (Circular) pathway, on a straight line (West-East) between the First Pillar (Russian: Первый Столб, Pervy Stolb) and the Granddad (Russian: Дед, Ded). The Granny and the Granddaughter together with the Granddad are one of the most photogenic sites of the reserve.',
        ),
      );
    });

    test('Should return error', () async {
      // arrange
      when(_db.getSingleRock(any, any)).thenThrow(
        PlatformException(code: '404'),
      );
      // act
      final result = await _repository.getSingleRock(0);
      // assert
      verify(_db.getSingleRock('en', 0));
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
*/
