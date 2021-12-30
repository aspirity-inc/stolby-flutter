import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/injection.dart';
import 'package:stolby_flutter/presentation/map_page/widgets/map_page_content.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return BlocProvider(
          create: (_) => getIt<MapBloc>()..add(const MapEvent.initialized()),
          child: const MapPageContent(),
        );
      },
    );
  }
}
