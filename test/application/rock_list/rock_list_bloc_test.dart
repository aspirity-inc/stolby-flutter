import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:stolby_flutter/application/rock_list/rock_list_bloc.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/i_rock_list_repository.dart';

import 'rock_list_bloc_test.mocks.dart';

@GenerateMocks([IRockListRepository])
void main() {
  late MockIRockListRepository repository;
  late RockListBloc bloc;

  const testItem = RockEntity(
    id: 0,
    latitude: 55.9174,
    longitude: 92.73843,
    picName: 'pic_babkaivnuchka',
    localizedName: 'The Granny and the Granddaughter',
    height: 40,
    difficulty: 1,
  );

  setUp(() {
    repository = MockIRockListRepository();
    bloc = RockListBloc(repository);
  });

  tearDown(() => bloc.close());

  group('Initial state', () {
    test('Should be initialized with correct state', () {
      final result = bloc.state;
      expect(result, RockListState.initial());
    });
  });

  group('initialized()', () {
    blocTest(
      'Should emit nothing on error',
      build: () {
        when(repository.getRocksList()).thenAnswer(
          (_) async => left(const DatabaseFailure.notFound()),
        );

        return bloc;
      },
      seed: RockListState.initial,
      act: (_) => bloc.add(const RockListEvent.initialized()),
      expect: () => [
        RockListState.initial().copyWith(loading: true),
        RockListState.initial().copyWith(loading: false),
      ],
    );
  });

  group('filtered()', () {
    blocTest(
      'Should emit nothing if search string is empty',
      build: () => bloc,
      seed: () => RockListState.initial().copyWith(
        allRocks: [testItem, testItem],
        rocksToShow: [testItem, testItem],
        searchString: '',
      ),
      act: (_) => bloc.add(const RockListEvent.filtered()),
      expect: () => <RockListState>[],
    );

    blocTest(
      'Should emit one rock if search string is Granny',
      build: () => bloc,
      seed: () => RockListState.initial().copyWith(
        allRocks: [testItem, testItem.copyWith(localizedName: 'Test name')],
        rocksToShow: [testItem, testItem.copyWith(localizedName: 'Test name')],
        searchString: 'Granny',
      ),
      act: (_) => bloc.add(const RockListEvent.filtered()),
      expect: () => [
        RockListState.initial().copyWith(
          allRocks: [testItem, testItem.copyWith(localizedName: 'Test name')],
          rocksToShow: [testItem],
          searchString: 'Granny',
        ),
      ],
    );
  });

  group('sorted()', () {
    blocTest(
      'Should emit nothing if no user location',
      build: () => bloc,
      seed: () => RockListState.initial().copyWith(
        allRocks: [
          testItem.copyWith(
            latitude: 55.918,
            longitude: 92.73849,
          ),
          testItem.copyWith(
            latitude: 55.9172,
            longitude: 92.7384,
          ),
        ],
        rocksToShow: [
          testItem.copyWith(
            latitude: 55.918,
            longitude: 92.73849,
          ),
          testItem.copyWith(
            latitude: 55.9172,
            longitude: 92.7384,
          ),
        ],
        searchString: '',
      ),
      act: (_) => bloc.add(const RockListEvent.sorted()),
      expect: () => <RockListState>[],
    );
    blocTest(
      'Should emit sorted list if user location is OK',
      build: () => bloc,
      seed: () => RockListState.initial().copyWith(
        allRocks: [
          testItem.copyWith(
            latitude: 55.99,
            longitude: 92.77,
          ),
          testItem.copyWith(
            latitude: 55.90,
            longitude: 92.70,
          ),
        ],
        rocksToShow: [
          testItem.copyWith(
            latitude: 55.99,
            longitude: 92.77,
          ),
          testItem.copyWith(
            latitude: 55.90,
            longitude: 92.70,
          ),
        ],
        searchString: '',
        userLocation: some(const LatLng(55.9174, 92.73843)),
      ),
      act: (_) => bloc.add(const RockListEvent.sorted()),
      expect: () => [
        RockListState.initial().copyWith(
          allRocks: [
            testItem.copyWith(
              latitude: 55.99,
              longitude: 92.77,
            ),
            testItem.copyWith(
              latitude: 55.90,
              longitude: 92.70,
            ),
          ],
          rocksToShow: [
            testItem.copyWith(
              latitude: 55.90,
              longitude: 92.70,
            ),
            testItem.copyWith(
              latitude: 55.99,
              longitude: 92.77,
            ),
          ],
          searchString: '',
          userLocation: some(const LatLng(55.9174, 92.73843)),
        ),
      ],
    );
  });

  group('searchStringChanged()', () {
    blocTest(
      'Should emit nothing if search string is empty',
      build: () => bloc,
      seed: () => RockListState.initial().copyWith(
        allRocks: [testItem, testItem],
        rocksToShow: [testItem, testItem],
      ),
      act: (_) => bloc.add(
        const RockListEvent.searchStringChanged(
          searchString: '',
        ),
      ),
      expect: () => <RockListState>[],
    );

    blocTest(
      'Should emit one rock if search string is Granny',
      build: () => bloc,
      seed: () => RockListState.initial().copyWith(
        allRocks: [testItem, testItem.copyWith(localizedName: 'Test name')],
        rocksToShow: [testItem, testItem.copyWith(localizedName: 'Test name')],
      ),
      act: (_) => bloc.add(
        const RockListEvent.searchStringChanged(
          searchString: 'Granny',
        ),
      ),
      expect: () => [
        RockListState.initial().copyWith(
          allRocks: [
            testItem,
            testItem.copyWith(localizedName: 'Test name'),
          ],
          rocksToShow: [
            testItem,
            testItem.copyWith(localizedName: 'Test name'),
          ],
          searchString: 'Granny',
        ),
        RockListState.initial().copyWith(
          allRocks: [testItem, testItem.copyWith(localizedName: 'Test name')],
          rocksToShow: [testItem],
          searchString: 'Granny',
        ),
      ],
    );
  });

  group('locationChanged', () {
    blocTest(
      'Should emit sorted list on user location',
      build: () => bloc,
      seed: () => RockListState.initial().copyWith(
        allRocks: [
          testItem.copyWith(
            latitude: 55.99,
            longitude: 92.77,
          ),
          testItem.copyWith(
            latitude: 55.90,
            longitude: 92.70,
          ),
        ],
        rocksToShow: [
          testItem.copyWith(
            latitude: 55.99,
            longitude: 92.77,
          ),
          testItem.copyWith(
            latitude: 55.90,
            longitude: 92.70,
          ),
        ],
      ),
      act: (_) => bloc.add(
        const RockListEvent.locationChanged(
          location: LatLng(55.9174, 92.73843),
        ),
      ),
      expect: () => [
        RockListState.initial().copyWith(
          allRocks: [
            testItem.copyWith(
              latitude: 55.99,
              longitude: 92.77,
            ),
            testItem.copyWith(
              latitude: 55.90,
              longitude: 92.70,
            ),
          ],
          rocksToShow: [
            testItem.copyWith(
              latitude: 55.99,
              longitude: 92.77,
            ),
            testItem.copyWith(
              latitude: 55.90,
              longitude: 92.70,
            ),
          ],
          searchString: '',
          userLocation: some(const LatLng(55.9174, 92.73843)),
        ),
        RockListState.initial().copyWith(
          allRocks: [
            testItem.copyWith(
              latitude: 55.99,
              longitude: 92.77,
            ),
            testItem.copyWith(
              latitude: 55.90,
              longitude: 92.70,
            ),
          ],
          rocksToShow: [
            testItem.copyWith(
              latitude: 55.90,
              longitude: 92.70,
            ),
            testItem.copyWith(
              latitude: 55.99,
              longitude: 92.77,
            ),
          ],
          searchString: '',
          userLocation: some(const LatLng(55.9174, 92.73843)),
        ),
      ],
    );
  });

  group('searchStringCleared()', () {
    blocTest(
      'Should emit all rocks if search string is Granny',
      build: () => bloc,
      seed: () => RockListState.initial().copyWith(
        allRocks: [testItem, testItem.copyWith(localizedName: 'Test name')],
        rocksToShow: [testItem, testItem.copyWith(localizedName: 'Test name')],
        searchString: 'Granny',
      ),
      act: (_) => bloc.add(
        const RockListEvent.searchLineCleared(),
      ),
      expect: () => [
        RockListState.initial().copyWith(
          allRocks: [
            testItem,
            testItem.copyWith(localizedName: 'Test name'),
          ],
          rocksToShow: [
            testItem,
            testItem.copyWith(localizedName: 'Test name'),
          ],
          searchString: '',
        ),
      ],
    );
  });
}
