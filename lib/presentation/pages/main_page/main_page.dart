import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:stolby_flutter/presentation/pages/main_page/widgets/main_page_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SettingsBloc>().state.onboardingVisited
        ? null
        : context.router.push(const OnboardingRoute());

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const SafeArea(
            child: Padding(
              padding: EdgeInsets.only(bottom: 64.0),
              child: AutoRouter(),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            right: 0,
            child: Container(
              color: Theme.of(context).colorScheme.secondaryVariant,
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
    );
  }
}