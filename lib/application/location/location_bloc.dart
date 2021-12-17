import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stolby_flutter/domain/core/failures.dart';
import 'package:stolby_flutter/domain/feature/location/entities/user_location_entity.dart';
import 'package:stolby_flutter/domain/feature/location/i_location_repository.dart';

part 'location_bloc.freezed.dart';
part 'location_event.dart';
part 'location_state.dart';

@injectable
class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ILocationRepository _repository;

  StreamSubscription<Either<LocationFailure, UserLocationEntity>>?
      _locationSubscription;

  LocationBloc(this._repository) : super(LocationState.initial()) {
    on<LocationEvent>((event, emit) async {
      await event.map(
        checkedPermission: (e) async {
          final permissionResult = await _repository.getLocationPermissions();
          permissionResult.fold(
            (l) => emit(state.copyWith(
              failureOption: some(l),
              hasPermission: false,
              permissionAsked: false,
            )),
            (r) => emit(state.copyWith(
              hasPermission: true,
              permissionAsked: true,
            )),
          );
        },
        startWatchingLocation: (e) async {
          _locationSubscription =
              _repository.startWatchingLocation().listen((failureOrLocation) {
            failureOrLocation.fold(
              (l) => emit(
                state.copyWith(
                  failureOption: some(l),
                  userLocation: none(),
                ),
              ),
              (r) => emit(
                state.copyWith(
                  failureOption: none(),
                  userLocation: some(r),
                ),
              ),
            );
          });
        },
        stopWatchingLocation: (e) async {
          _locationSubscription?.cancel();
        },
      );
    });
  }

  @override
  Future<void> close() {
    _locationSubscription?.cancel();

    return super.close();
  }
}
