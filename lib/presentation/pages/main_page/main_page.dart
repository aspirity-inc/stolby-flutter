import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/presentation/pages/main_page/widgets/main_page_navigation_bar.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!context.read<SettingsBloc>().state.onboardingVisited) {
      context.router.replace(const OnboardingRoute());
    }
    final color = Theme.of(context).colorScheme.secondaryContainer;

    final isMapPage = context.router.current.name == MapRoute().routeName ||
        context.router.current.name == const MainRoute().routeName;

    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: state.darkTheme ? SystemUiOverlayStyle.light : SystemUiOverlayStyle.dark,
        child: Builder(
          builder: (context) => Scaffold(
            body: Stack(
              fit: StackFit.expand,
              children: [
                SafeArea(
                  top: !isMapPage,
                  bottom: !isMapPage,
                  child: Padding(
                    padding: isMapPage ? EdgeInsets.zero : const EdgeInsets.only(bottom: 64),
                    child: const AutoRouter(),
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: color,
                      boxShadow: [
                        BoxShadow(
                          color: color.withAlpha(4),
                          blurRadius: 1,
                        ),
                        BoxShadow(
                          color: color.withAlpha(5),
                          blurRadius: 2,
                          offset: const Offset(0, -2),
                        ),
                        BoxShadow(
                          color: color.withAlpha(6),
                          blurRadius: 4,
                          offset: const Offset(0, -5),
                        ),
                        BoxShadow(
                          color: color.withAlpha(8),
                          blurRadius: 9,
                          offset: const Offset(0, -10),
                        ),
                        BoxShadow(
                          color: color.withAlpha(10),
                          blurRadius: 16,
                          offset: const Offset(0, -16),
                        ),
                        BoxShadow(
                          color: color.withAlpha(13),
                          blurRadius: 27,
                          offset: const Offset(0, -24),
                        ),
                      ],
                    ),
                    child: const SafeArea(
                      top: false,
                      child: SizedBox(
                        height: 64,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: MainPageNavigationBar(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
