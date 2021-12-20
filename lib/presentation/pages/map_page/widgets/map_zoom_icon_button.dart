import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';

enum ZoomIconButtonAction {
  moreZoom,
  lessZoom,
}

class MapZoomIconButton extends StatelessWidget {
  final ZoomIconButtonAction action;

  const MapZoomIconButton({
    Key? key,
    required this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        return InkWell(
          customBorder: const CircleBorder(),
          onTap: () => context.read<MapBloc>().add(MapEvent.zoomChanged(
                state.zoom +
                    (action == ZoomIconButtonAction.moreZoom ? 0.5 : -0.5),
              )),
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 8.0,
            ),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.75),
            ),
            child: Icon(
              action == ZoomIconButtonAction.moreZoom
                  ? Icons.add
                  : Icons.remove,
              size: 24,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
