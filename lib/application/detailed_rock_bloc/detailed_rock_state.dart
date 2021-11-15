part of 'detailed_rock_bloc.dart';

@freezed
class DetailedRockState with _$DetailedRockState {
  const factory DetailedRockState({
    required Option<DetailedRockEntity> rock,
    required Option<double> distance,
  }) = _DetailedRockState;

  factory DetailedRockState.initial() => DetailedRockState(
        rock: none(),
        distance: none(),
      );
}
