import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_rock_card.dart';

class MapBottomSheet extends StatelessWidget {
  const MapBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final bottomOffset = mediaQuery.viewInsets.bottom;
    final maxChildSize = (bottomOffset + 220 / screenHeight);
    final minChildSize = bottomOffset + 64 / screenHeight;

    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        return state.clickedRock.fold(
          () => const SizedBox(),
          (clickedRock) => DraggableScrollableSheet(
            maxChildSize: maxChildSize,
            initialChildSize: maxChildSize,
            minChildSize: minChildSize,
            builder: (context, scrollController) {
              return Container(
                color: Theme.of(context).colorScheme.onPrimary,
                child: ListView(
                  controller: scrollController,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Center(
                      child: SizedBox(
                        width: 48,
                        child: Divider(
                          thickness: 3,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    MapRockCard(
                      rock: clickedRock,
                      onMarkerPressed: () {
                        state.setMarkerRock.fold(
                          () => context
                              .read<MapBloc>()
                              .add(MapEvent.rockMarkerPut(clickedRock.id)),
                          (a) => context.read<MapBloc>().add(
                                const MapEvent.rockMarkerRemoved(),
                              ),
                        );
                      },
                      selected: state.setMarkerRock.fold(
                        () => false,
                        (a) => a == clickedRock,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
