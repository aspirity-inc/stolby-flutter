import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/application/detailed_rock_bloc/detailed_rock_bloc.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/i_rock_list_repository.dart';

import 'detailed_rock_bloc_test.mocks.dart';

@GenerateMocks([IRockListRepository])
void main() {
  late MockIRockListRepository repository;
  late DetailedRockBloc bloc;
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
    repository = MockIRockListRepository();
    bloc = DetailedRockBloc(repository);
  });

  tearDown(() => bloc.close());

  group(
    'initialized()',
    () {
      blocTest<DetailedRockBloc, DetailedRockState>(
        'Should emit detailed rock info from DB',
        build: () {
          when(repository.getSingleRock(any)).thenAnswer(
            (_) async => right(
              testItem,
            ),
          );

          return bloc;
        },
        seed: DetailedRockState.initial,
        act: (bloc) => bloc.add(
          const DetailedRockEvent.initialized(
            id: 0,
          ),
        ),
        expect: () => [
          DetailedRockState.initial().copyWith(
            rock: some(testItem),
          ),
        ],
      );

      blocTest<DetailedRockBloc, DetailedRockState>(
        'Should emit nothing on error',
        build: () {
          when(repository.getSingleRock(0)).thenAnswer(
            (_) async => left(const DatabaseFailure.notFound()),
          );

          return bloc;
        },
        seed: DetailedRockState.initial,
        act: (bloc) => bloc.add(
          const DetailedRockEvent.initialized(
            id: 0,
          ),
        ),
        expect: () => <DetailedRockState>[],
      );
    },
  );
  group('locationChanged()', () {
    blocTest<DetailedRockBloc, DetailedRockState>(
      'should emit distance in meters on user position',
      build: () => bloc,
      seed: () => DetailedRockState(rock: some(testItem), distance: none()),
      act: (bloc) => bloc.add(
        const DetailedRockEvent.locationChanged(
          location: LatLng(55.9074, 92.73843),
        ),
      ),
      expect: () => [
        DetailedRockState.initial().copyWith(
          rock: some(testItem),
          distance: some(1113),
        ),
      ],
    );
  });
}
