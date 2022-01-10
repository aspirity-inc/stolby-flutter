import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/i_map_repository.dart';

part 'map_bloc.freezed.dart';
part 'map_event.dart';
part 'map_state.dart';

@injectable
class MapBloc extends Bloc<MapEvent, MapState> {
  final IMapRepository _mapRepository;

  MapBloc(this._mapRepository) : super(MapState.initial()) {
    on<MapEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {
          emit(
            state.copyWith(loading: true),
          );
          final rocksOrError = await _mapRepository.getRocksCoordinatesList();

          rocksOrError.fold(
            (f) => emit(
              state.copyWith(loading: false),
            ),
            (r) => emit(
              state.copyWith(
                loading: false,
                rocks: r,
              ),
            ),
          );
        },
        zoomChanged: (e) async {
          double newZoom = e.zoom;
          newZoom = newZoom > 18 ? 18 : newZoom;
          newZoom = newZoom < 9 ? 9 : newZoom;
          emit(
            state.copyWith(zoom: newZoom),
          );
        },
        angleChanged: (e) async => emit(
          state.copyWith(angle: e.angle),
        ),
        rockMarkerPut: (e) async => _selectedRockChanged(e, emit),
        rockMarkerRemoved: (e) async => emit(
          state.copyWith(setMarkerRock: none()),
        ),
        rockClicked: (e) async => _onRockTapped(e, emit),
        clickedRockRemoved: (e) async => emit(
          state.copyWith(clickedRock: none()),
        ),
      );
    });
  }

  FutureOr<void> _selectedRockChanged(
    _RockMarkerPut event,
    Emitter<MapState> emit,
  ) async {
    final rock =
        state.rocks.firstWhereOrNull((element) => element.id == event.id);
    emit(
      state.copyWith(
        setMarkerRock: rock != null ? some(rock) : none(),
      ),
    );
  }

  FutureOr<void> _onRockTapped(
    _RockClicked event,
    Emitter<MapState> emit,
  ) async {
    final rock =
        state.rocks.firstWhereOrNull((element) => element.id == event.id);
    emit(
      state.copyWith(
        clickedRock: rock != null ? some(rock) : none(),
      ),
    );
  }
}
