import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';

import '../rock_list/rock_list_bloc_test.mocks.dart';

void main() {
  late MockIRockListRepository repository;
  late MapBloc bloc;
  const testItem = RockEntity(
    id: 0,
    latitude: 55.9174,
    longitude: 92.73843,
    picName: 'pic_babkaivnuchka',
    localizedName: 'The Granny and the Granddaughter',
    difficulty: 1,
    height: 0,
  );

  setUp(() {
    repository = MockIRockListRepository();
    bloc = MapBloc(repository);
  });

  tearDown(() => bloc.close());

  group(
    'initialized()',
    () {
      blocTest<MapBloc, MapState>(
        'Should emit rocks from DB',
        build: () {
          when(repository.getRocksList()).thenAnswer(
            (_) async => right(
              [testItem],
            ),
          );

          return bloc;
        },
        seed: () => MapState.initial(),
        act: (bloc) => bloc.add(const MapEvent.initialized()),
        expect: () => [
          MapState.initial().copyWith(loading: true),
          MapState.initial().copyWith(
            loading: false,
            rocks: [testItem],
          ),
        ],
      );

      blocTest<MapBloc, MapState>(
        'Should emit nothing on error',
        build: () {
          when(repository.getRocksList()).thenAnswer(
            (_) async => left(const DatabaseFailure.notFound()),
          );

          return bloc;
        },
        seed: () => MapState.initial(),
        act: (bloc) => bloc.add(const MapEvent.initialized()),
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
      blocTest<MapBloc, MapState>(
        'Should emit state with changed angle on angle change',
        build: () => bloc,
        seed: () => MapState.initial().copyWith(
          rocks: [
            testItem,
            testItem,
          ],
        ),
        act: (bloc) => bloc.add(
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

      blocTest<MapBloc, MapState>(
        'Should emit state with maximum zoom of 18',
        build: () => bloc,
        seed: () => MapState.initial().copyWith(
          rocks: [
            testItem,
            testItem,
          ],
        ),
        act: (bloc) => bloc.add(
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

      blocTest<MapBloc, MapState>(
        'Should emit state with minimum zoom of 9',
        build: () => bloc,
        seed: () => MapState.initial().copyWith(
          rocks: [
            testItem,
            testItem,
          ],
        ),
        act: (bloc) => bloc.add(
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
      blocTest<MapBloc, MapState>(
        'Should emit state with changed angle on angle change',
        build: () => bloc,
        seed: () => MapState.initial().copyWith(
          rocks: [
            testItem,
            testItem,
          ],
        ),
        act: (bloc) => bloc.add(
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
