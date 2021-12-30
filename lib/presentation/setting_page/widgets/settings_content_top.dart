import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/presentation/setting_page/widgets/settings_switch.dart';

class SettingsContentTop extends StatelessWidget {
  const SettingsContentTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                localization.appbar_title_settings,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SettingsSwitch(
                text: localization.settings_auto_theme,
                value: state.autoThemeChange,
                onPressed: (_) => context.read<SettingsBloc>().add(
                      const SettingsEvent.toggledAutoTheme(),
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              SettingsSwitch(
                text: localization.settings_dark_theme,
                value: state.darkTheme,
                onPressed: (_) => context.read<SettingsBloc>().add(
                      const SettingsEvent.toggledDarkTheme(),
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              SettingsSwitch(
                text: localization.settings_reverse_map,
                value: state.reversedMap,
                onPressed: (_) => context.read<SettingsBloc>().add(
                      const SettingsEvent.toggledMapReverse(),
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
              SettingsSwitch(
                text: localization.settings_user_map_centering,
                value: state.mapUserCentering,
                onPressed: (_) => context.read<SettingsBloc>().add(
                      const SettingsEvent.toggledUserMapCentering(),
                    ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        );
      },
    );
  }
}
