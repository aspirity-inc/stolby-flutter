import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_list_item_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/i_rock_list_repository.dart';

part 'rock_list_bloc.freezed.dart';
part 'rock_list_event.dart';
part 'rock_list_state.dart';

@injectable
class RockListBloc extends Bloc<RockListEvent, RockListState> {
  final IRockListRepository _rockListRepository;

  num calculateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 -
        c((lat2 - lat1) * p) / 2 +
        c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;

    return 12742 * asin(sqrt(a));
  }

  RockListBloc(this._rockListRepository) : super(RockListState.initial()) {
    on<RockListEvent>(
      (event, emit) async {
        await event
            .map(
              initialized: (e) async {
                emit(
                  state.copyWith(loading: true),
                );
                final rocksOrError = await _rockListRepository.getRocksList();
                rocksOrError.fold(
                  (f) => emit(
                    state.copyWith(loading: false),
                  ),
                  (r) => emit(
                    state.copyWith(
                      loading: false,
                      allRocks: r,
                      rocksToShow: r,
                    ),
                  ),
                );
              },
              searchLineChanged: (e) {
                if (e.searchLineString.length >= 3) {
                  final searchedRocks = state.allRocks
                      .where(
                        (element) =>
                            element.localizedName.contains(e.searchLineString),
                      )
                      .toList();
                  emit(
                    state.copyWith(
                      searchString: e.searchLineString,
                      rocksToShow: searchedRocks,
                    ),
                  );
                } else {
                  emit(
                    state.copyWith(searchString: e.searchLineString),
                  );
                }
              },
              sorted: (e) {
                final sortedRocks = state.rocksToShow;
                sortedRocks.sort(
                  (a, b) => calculateDistance(
                    e.location.latitude,
                    e.location.longitude,
                    a.latitude,
                    a.longitude,
                  ).compareTo(
                    calculateDistance(
                      e.location.latitude,
                      e.location.longitude,
                      b.latitude,
                      b.longitude,
                    ),
                  ),
                );
                emit(
                  state.copyWith(rocksToShow: sortedRocks),
                );
              },
              filtered: (e) {
                final filteredByDifficultyRocks = state.allRocks
                    .where((element) => element.difficulty == e.difficulty)
                    .toList();
                emit(
                  state.copyWith(
                    rocksToShow: filteredByDifficultyRocks,
                  ),
                );
              },
              locationChanged: (e) {
                emit(
                  state.copyWith(
                    userLocation: some(e.location),
                  ),
                );
              },
              searchLineCleared: (e) {
                emit(
                  state.copyWith(rocksToShow: state.allRocks, searchString: ''),
                );
              },
            )!
            .asStream()
            .debounceTime(
              Duration(milliseconds: 300),
            );
      },
    );
  }
}
