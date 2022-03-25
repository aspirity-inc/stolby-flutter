import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/location/location_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    if (context.read<SettingsBloc>().state.geolocationEnabled) {
      context.read<LocationBloc>().add(
            const LocationEvent.startWatchingLocation(),
          );
    }
    Future.delayed(
      Duration.zero,
      () => context.router.replace(const MainRoute()),
    );
  }

  @override
  Widget build(BuildContext context) => const SizedBox();
}
