import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:latlong2/latlong.dart';
import 'package:meta/meta.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/i_rock_list_repository.dart';

part 'single_rock_bloc.freezed.dart';
part 'single_rock_event.dart';
part 'single_rock_state.dart';

@injectable
class SingleRockBloc extends Bloc<SingleRockEvent, SingleRockState> {
  final IRockListRepository _rockListRepository;
  SingleRockBloc(this._rockListRepository) : super(SingleRockState.initial()) {
    on<SingleRockEvent>((event, emit) async {
      event.map(
        initialized: (e) async {
          final rockOrError = await _rockListRepository.getSingleRock(e.id);
          rockOrError.fold(
            (f) => null,
            (r) => emit(
              state.copyWith(rock: some(r)),
            ),
          );
        },
        locationChanged: (e) {
          const distance = Distance();
          final rock = state.rock;
          rock.fold(
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
        },
      );
    });
  }
}
