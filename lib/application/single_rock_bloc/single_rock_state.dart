part of 'single_rock_bloc.dart';

@freezed
class SingleRockState with _$SingleRockState {
  const factory SingleRockState({
    required Option<DetailedRockEntity> rock,
    required Option<double> distance,
  }) = _SingleRockState;

  factory SingleRockState.initial() => SingleRockState(
        rock: none(),
        distance: none(),
      );
}
