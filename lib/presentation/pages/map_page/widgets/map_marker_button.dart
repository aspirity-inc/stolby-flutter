import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';

class MapMarkerButton extends StatelessWidget {
  const MapMarkerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return BlocBuilder<MapControlBloc, MapControlState>(
      builder: (context, state) => state.clickedRock.fold(
        () => const SizedBox(),
        (rock) => InkWell(
          onTap: () => _handleMarkerSelected(context, rock),
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 24,
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
                        () => localization?.dialog_rock_item_mark,
                        (a) => a.id == rock.id
                            ? localization?.dialog_rock_item_hide_mark
                            : localization?.dialog_rock_item_mark,
                      ) ??
                      '',
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
      ),
    );
  }

  void _handleMarkerSelected(BuildContext context, RockEntity rock) =>
      context.read<MapControlBloc>().add(
            MapControlEvent.handleMarkerSelection(rock),
          );
}
