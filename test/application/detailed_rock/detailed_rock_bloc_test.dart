import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/application/detailed_rock_bloc/detailed_rock_bloc.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/i_rock_list_repository.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';

import 'detailed_rock_bloc_test.mocks.dart';

@GenerateMocks([IRockListRepository])
void main() {
  late MockIRockListRepository _repository;
  late DetailedRockBloc _bloc;
  const testItem = DetailedRockEntity(
    id: 0,
    latitude: 55.9174,
    longitude: 92.73843,
    difficulty: 1,
    height: 40,
    picName: 'pic_babkaivnuchka',
    localizedName: 'The Granny and the Granddaughter',
    shortInfo: 'this is short info',
    fullInfo: 'this is full info',
  );

  setUp(() {
    _repository = MockIRockListRepository();
    _bloc = DetailedRockBloc(_repository);
  });

  tearDown(() => _bloc.close());

  group(
    'initialized()',
    () {
      blocTest(
        'Should emit rocks from DB',
        build: () {
          when(_repository.getRocksCoordinatesList()).thenAnswer(
            (_) async => right(
              [testItem],
            ),
          );

          return _bloc;
        },
        seed: () => DetailedRockState.initial(),
        act: (DetailedRockBloc bloc) => bloc.add(
          const DetailedRockEvent.initialized(
            id: 0,
          ),
        ),
        expect: () => [
          DetailedRockState.initial().copyWith(loading: true),
          DetailedRockState.initial().copyWith(
            loading: false,
            rocks: [testItem],
          ),
        ],
      );

      blocTest(
        'Should emit nothing on error',
        build: () {
          when(_repository.getRocksCoordinatesList()).thenAnswer(
            (_) async => left(const DatabaseFailure.notFound()),
          );

          return _bloc;
        },
        seed: () => MapState.initial(),
        act: (MapBloc bloc) => bloc.add(const MapEvent.initialized()),
        expect: () => [
          MapState.initial().copyWith(loading: true),
          MapState.initial().copyWith(loading: false),
        ],
      );
    },
  );
}
