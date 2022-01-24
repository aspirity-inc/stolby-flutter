import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';

main() {
  late MapControlBloc _bloc;

  setUp(() {
    _bloc = MapControlBloc();
  });

  tearDown(() => _bloc.close());

  const testItem = RockMapEntity(
    id: 0,
    latitude: 55.9174,
    longitude: 92.73843,
    picName: 'pic_babkaivnuchka',
    localizedName: 'The Granny and the Granddaughter',
  );

  group(
    'rockClicked()',
    () {
      blocTest(
        'Should emit state with clicked rock',
        build: () => _bloc,
        seed: () => MapControlState.initial(),
        act: (MapControlBloc _bloc) => _bloc.add(
          const MapControlEvent.rockClicked(testItem),
        ),
        expect: () => [
          MapControlState.initial().copyWith(
            clickedRock: some(testItem),
          ),
        ],
      );
    },
  );

  group(
    'rockMarkerPut()',
    () {
      blocTest(
        'Should emit state with tapped rock',
        build: () => _bloc,
        seed: () => MapControlState.initial(),
        act: (MapControlBloc _bloc) => _bloc.add(
          const MapControlEvent.rockMarkerPut(testItem),
        ),
        expect: () => [
          MapControlState.initial().copyWith(
            setMarkerRock: some(testItem),
          ),
        ],
      );
    },
  );

  group(
    'rockMarkerRemoved()',
    () {
      blocTest(
        'Should emit state without setMarkerRock if state had initial setMarkerRock',
        build: () => _bloc,
        seed: () => MapControlState.initial().copyWith(
          setMarkerRock: some(testItem),
        ),
        act: (MapControlBloc _bloc) => _bloc.add(
          const MapControlEvent.rockMarkerRemoved(),
        ),
        expect: () => [
          MapControlState.initial(),
        ],
      );

      blocTest(
        'Should emit nothing if rock was not selected',
        build: () => _bloc,
        seed: () => MapControlState.initial().copyWith(),
        act: (MapControlBloc _bloc) => _bloc.add(
          const MapControlEvent.rockMarkerRemoved(),
        ),
        expect: () => [],
      );
    },
  );

  group(
    'clickedRockRemoved()',
    () {
      blocTest(
        'Should emit state without clickedRock if state had initial clickedRock',
        build: () => _bloc,
        seed: () => MapControlState.initial().copyWith(
          clickedRock: some(testItem),
        ),
        act: (MapControlBloc _bloc) => _bloc.add(
          const MapControlEvent.clickedRockRemoved(),
        ),
        expect: () => [MapControlState.initial()],
      );

      blocTest(
        'Should emit nothing if rock was not clicked',
        build: () => _bloc,
        seed: () => MapControlState.initial(),
        act: (MapControlBloc _bloc) => _bloc.add(
          const MapControlEvent.clickedRockRemoved(),
        ),
        expect: () => [],
      );
    },
  );

  group(
    'handleMarkerSelection()',
    () {
      blocTest(
        'Should emit state with rock if there is not initial rock',
        build: () => _bloc,
        seed: () => MapControlState.initial(),
        act: (MapControlBloc _bloc) => _bloc.add(
          const MapControlEvent.handleMarkerSelection(testItem),
        ),
        expect: () => [
          MapControlState.initial().copyWith(
            setMarkerRock: some(testItem),
          ),
        ],
      );
      blocTest(
        'Should emit state without rock if there is rock same as in event',
        build: () => _bloc,
        seed: () => MapControlState.initial().copyWith(
          setMarkerRock: some(testItem),
        ),
        act: (MapControlBloc _bloc) => _bloc.add(
          const MapControlEvent.handleMarkerSelection(testItem),
        ),
        expect: () => [
          MapControlState.initial(),
        ],
      );
      blocTest(
        'Should emit state with another rock',
        build: () => _bloc,
        seed: () => MapControlState.initial().copyWith(
          setMarkerRock: some(testItem.copyWith(id: 1)),
        ),
        act: (MapControlBloc _bloc) => _bloc.add(
          const MapControlEvent.handleMarkerSelection(testItem),
        ),
        expect: () => [
          MapControlState.initial().copyWith(
            setMarkerRock: some(testItem),
          ),
        ],
      );
    },
  );
}
