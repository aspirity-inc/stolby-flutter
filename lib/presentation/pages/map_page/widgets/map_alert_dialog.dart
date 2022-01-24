import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/domain/feature/rocks_map/entities/rock_map_entity.dart';
import 'package:stolby_flutter/presentation/pages/map_page/widgets/map_alert_dialog_button.dart';

class MapAlertDialog extends StatelessWidget {
  final RockMapEntity rock;
  final VoidCallback onMarkButtonPressed;

  const MapAlertDialog({
    Key? key,
    required this.rock,
    required this.onMarkButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return AlertDialog(
      key: const ValueKey('map_alert_dialog'),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      actionsPadding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: 8.0,
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
            onPressed: onMarkButtonPressed,
            icon: CupertinoIcons.location,
            text: context.read<MapControlBloc>().state.setMarkerRock.fold(
                  () => localization.dialog_rock_item_mark,
                  (a) => a.id == rock.id
                      ? localization.dialog_rock_item_hide_mark
                      : localization.dialog_rock_item_mark,
                ),
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
            text: localization.action_settings,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => context.router.pop(),
          child: Text(
            localization.toast_button_hide.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
