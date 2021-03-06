import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/i_rock_list_repository.dart';

part 'detailed_rock_bloc.freezed.dart';
part 'detailed_rock_event.dart';
part 'detailed_rock_state.dart';

@injectable
class DetailedRockBloc extends Bloc<DetailedRockEvent, DetailedRockState> {
  final IRockListRepository _rockListRepository;

  DetailedRockBloc(this._rockListRepository)
      : super(DetailedRockState.initial()) {
    on<DetailedRockEvent>(
      (event, emit) async {
        await event.map(
          initialized: (e) => _initialized(e, emit),
          locationChanged: (e) => _locationChanged(e, emit),
        );
      },
    );
  }

  FutureOr<void> _initialized(
    _Initialized e,
    Emitter<DetailedRockState> emit,
  ) async {
    final rockOrError = await _rockListRepository.getSingleRock(e.id);
    rockOrError.fold(
      (f) => null,
      (r) => emit(
        state.copyWith(rock: some(r)),
      ),
    );
  }

  FutureOr<void> _locationChanged(
    _LocationChanged e,
    Emitter<DetailedRockState> emit,
  ) {
    const distance = Distance();
    state.rock.fold(
      () => null,
      (r) => emit(
        state.copyWith(
          distance: some(
            distance.distance(
              LatLng(r.latitude, r.longitude),
              e.location,
            ),
          ),
        ),
      ),
    );
  }
}
