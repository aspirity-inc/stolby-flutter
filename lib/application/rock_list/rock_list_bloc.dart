import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  RockListBloc(this._rockListRepository) : super(RockListState.initial()) {
    on<RockListEvent>(
      (event, emit) async {
        await event.map(
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
          searchStringChanged: (e) {
            e.searchString.length >= 3 ? add(RockListEvent.filtered()) : null;
            emit(
              state.copyWith(searchString: e.searchString),
            );
          },
          sorted: (e) {
            final sortedRocks = state.rocksToShow;
            const distance = Distance();
            sortedRocks.sort(
              (a, b) => distance(LatLng(a.latitude, a.longitude), e.location)
                  .compareTo(
                distance(LatLng(b.latitude, b.longitude), e.location),
              ),
            );
            emit(
              state.copyWith(rocksToShow: sortedRocks),
            );
          },
          filtered: (e) {
            if (state.searchString.length >= 3) {
              final filteredRocks = state.allRocks
                  .where(
                    (element) =>
                        element.localizedName.contains(state.searchString),
                  )
                  .toList();
              emit(state.copyWith(
                rocksToShow: filteredRocks,
              ));
            }
          },
          locationChanged: (e) {
            add(RockListEvent.sorted(location: e.location));
            emit(
              state.copyWith(
                userLocation: some(e.location),
              ),
            );
          },
          searchLineCleared: (e) {
            state.userLocation.fold(
              () => null,
              (a) => add(
                RockListEvent.sorted(location: a),
              ),
            );
            emit(
              state.copyWith(rocksToShow: state.allRocks, searchString: ''),
            );
          },
        );
      },
    );
  }
}
