import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';

class MapMarkerButton extends StatelessWidget {
  const MapMarkerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final ThemeData theme = Theme.of(context);

    return BlocBuilder<MapControlBloc, MapControlState>(
      builder: (context, state) {
        return state.clickedRock.fold(
          () => const SizedBox(),
          (rock) => InkWell(
            onTap: () {
              context.read<MapControlBloc>().add(
                    MapControlEvent.handleMarkerSelection(rock),
                  );
            },
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 24.0,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                color: theme.colorScheme.secondary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    state.setMarkerRock.fold(
                      () => localization.dialog_rock_item_mark,
                      (a) => a.id == rock.id
                          ? localization.dialog_rock_item_hide_mark
                          : localization.dialog_rock_item_mark,
                    ),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
