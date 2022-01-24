import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/i_map_repository.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';

import 'map_bloc_test.mocks.dart';

@GenerateMocks([IMapRepository])
void main() {
  late MockIMapRepository _repository;
  late MapBloc _bloc;
  const testItem = RockMapEntity(
    id: 0,
    latitude: 55.9174,
    longitude: 92.73843,
    picName: 'pic_babkaivnuchka',
    localizedName: 'The Granny and the Granddaughter',
  );

  setUp(() {
    _repository = MockIMapRepository();
    _bloc = MapBloc(_repository);
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
        seed: () => MapState.initial(),
        act: (MapBloc bloc) => bloc.add(const MapEvent.initialized()),
        expect: () => [
          MapState.initial().copyWith(loading: true),
          MapState.initial().copyWith(
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
  group(
    'zoomChanged()',
    () {
      blocTest(
        'Should emit state with changed angle on angle change',
        build: () => _bloc,
        seed: () => MapState.initial().copyWith(
          rocks: [
            testItem,
            testItem,
          ],
        ),
        act: (MapBloc bloc) => bloc.add(
          const MapEvent.zoomChanged(
            15,
          ),
        ),
        expect: () => [
          MapState.initial().copyWith(
            rocks: [
              testItem,
              testItem,
            ],
            zoom: 15,
          ),
        ],
      );

      blocTest(
        'Should emit state with maximum zoom of 18',
        build: () => _bloc,
        seed: () => MapState.initial().copyWith(
          rocks: [
            testItem,
            testItem,
          ],
        ),
        act: (MapBloc bloc) => bloc.add(
          const MapEvent.zoomChanged(
            20,
          ),
        ),
        expect: () => [
          MapState.initial().copyWith(
            rocks: [
              testItem,
              testItem,
            ],
            zoom: 18,
          ),
        ],
      );

      blocTest(
        'Should emit state with minimum zoom of 9',
        build: () => _bloc,
        seed: () => MapState.initial().copyWith(
          rocks: [
            testItem,
            testItem,
          ],
        ),
        act: (MapBloc bloc) => bloc.add(
          const MapEvent.zoomChanged(
            7,
          ),
        ),
        expect: () => [
          MapState.initial().copyWith(
            rocks: [
              testItem,
              testItem,
            ],
            zoom: 9,
          ),
        ],
      );
    },
  );
  group(
    'angleChanged()',
    () {
      blocTest(
        'Should emit state with changed angle on angle change',
        build: () => _bloc,
        seed: () => MapState.initial().copyWith(
          rocks: [
            testItem,
            testItem,
          ],
        ),
        act: (MapBloc bloc) => bloc.add(
          const MapEvent.angleChanged(
            90,
          ),
        ),
        expect: () => [
          MapState.initial().copyWith(
            rocks: [
              testItem,
              testItem,
            ],
            angle: 90,
          ),
        ],
      );
    },
  );
}
