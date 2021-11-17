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
            emit(state.copyWith(loading: true));
            final rocksOrError = await _rockListRepository.getRocksList();
            rocksOrError.fold(
              (f) => emit(state.copyWith(
                loading: false,
              )),
              (r) => emit(
                state.copyWith(loading: false, rocksToShow: r, allRocks: r),
              ),
            );
          },
          searchStringChanged: (e) {
            e.searchString.length >= 3
                ? add(const RockListEvent.filtered())
                : null;
            emit(state.copyWith(searchString: e.searchString));
          },
          sorted: (e) {
            state.userLocation.fold(
              () => null,
              (r) => emit(state.copyWith(
                rocksToShow: _sortRocksList(state.rocksToShow, r),
              )),
            );
          },
          filtered: (e) {
            state.searchString.length >= 3
                ? emit(state.copyWith(
                    rocksToShow:
                        _filterRocksList(state.allRocks, state.searchString),
                  ))
                : null;
          },
          locationChanged: (e) {
            _sortListByLocation(some(e.location));
            emit(
              state.copyWith(userLocation: some(e.location)),
            );
          },
          searchLineCleared: (e) {
            _sortListByLocation(state.userLocation);
            emit(state.copyWith(rocksToShow: state.allRocks, searchString: ''));
          },
        );
      },
    );
  }

  List<RockListItemEntity> _sortRocksList(
    List<RockListItemEntity> list,
    LatLng latLng,
  ) {
    const distance = Distance();

    return list.sorted(
      (a, b) => distance
          .distance(
            LatLng(a.latitude, a.longitude),
            latLng,
          )
          .compareTo(
            distance.distance(
              LatLng(b.latitude, b.longitude),
              latLng,
            ),
          ),
    );
  }

  List<RockListItemEntity> _filterRocksList(
    List<RockListItemEntity> list,
    String filter,
  ) =>
      list
          .where(
            (element) => element.localizedName.contains(filter),
          )
          .toList();

  void _sortListByLocation(Option<LatLng> location) {
    location.fold(
      () => null,
      (a) => add(
        const RockListEvent.sorted(),
      ),
    );
  }
}
