import 'package:auto_route/auto_route.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';
import 'package:stolby_flutter/domain/feature/rocks_list/entities/rock_entity.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_alert_dialog_button.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';

class MapAlertDialog extends StatelessWidget {
  const MapAlertDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return BlocBuilder<MapControlBloc, MapControlState>(
      builder: (context, state) => state.clickedRock.fold(
        () => const AlertDialog(),
        (rock) => AlertDialog(
          key: const ValueKey('map_alert_dialog'),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          actionsPadding: const EdgeInsets.only(
            left: 16,
            right: 16,
            bottom: 8,
          ),
          title: Text(
            rock.localizedName,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              MapAlertDialogButton(
                onPressed: () => _handleMarkerSelected(context, rock),
                icon: CupertinoIcons.location,
                text: state.setMarkerRock.fold(
                      () => localization?.dialog_rock_item_mark,
                      (a) => a.id == rock.id
                          ? localization?.dialog_rock_item_hide_mark
                          : localization?.dialog_rock_item_mark,
                    ) ??
                    '',
              ),
              const SizedBox(
                height: 16,
              ),
              MapAlertDialogButton(
                onPressed: () => context.router.push(
                  DetailedRockRoute(
                    rockId: rock.id,
                  ),
                ),
                icon: CommunityMaterialIcons.image_filter_hdr,
                text: localization?.action_settings ?? '',
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => context.router.pop(),
              child: Text(
                localization?.toast_button_hide.toUpperCase() ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleMarkerSelected(
    BuildContext context,
    RockEntity rock,
  ) =>
      context.read<MapControlBloc>().add(
            MapControlEvent.handleMarkerSelection(rock),
          );
}
