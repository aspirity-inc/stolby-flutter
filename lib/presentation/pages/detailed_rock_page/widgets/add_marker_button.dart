import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/detailed_rock_entity.dart';

class AddMarkerButton extends StatelessWidget {
  final DetailedRockEntity rock;

  const AddMarkerButton({
    Key? key,
    required this.rock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return BlocBuilder<MapControlBloc, MapControlState>(
      builder: (context, state) {
        return Row(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            InkWell(
              onTap: () {
                if (state.clickedRock.isSome()) {
                  context.read<MapControlBloc>().add(
                        MapControlEvent.handleMarkerSelection(
                          state.clickedRock.fold(
                            () => throw (Exception('unexpected')),
                            (a) => a,
                          ),
                        ),
                      );
                }
              },
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 24.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(24)),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 8,
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
            const Expanded(
              child: SizedBox(),
            ),
          ],
        );
      },
    );
  }
}