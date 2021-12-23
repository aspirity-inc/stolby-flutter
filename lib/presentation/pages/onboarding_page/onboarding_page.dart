import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/application/settings/settings_bloc.dart';
import 'package:stolby_flutter/presentation/core/app_assets.dart';
import 'package:stolby_flutter/presentation/pages/onboarding_page/widgets/onboarding_bottom_bar.dart';
import 'package:stolby_flutter/presentation/pages/onboarding_page/widgets/onboarding_page_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final controller = PageController();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: TextButton(
                onPressed: () {
                  if (currentIndex == 2) {
                    context
                        .read<SettingsBloc>()
                        .add(const SettingsEvent.onboardingVisited());
                    context.router.pop();
                  } else {
                    currentIndex++;
                  }
                },
                child: Text(
                  currentIndex == 2
                      ? localization.activity_tutorial_button_close
                      : localization.onboarding_skip,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            PageView(
              onPageChanged: (page) {
                setState(() => currentIndex = page);
              },
              children: [
                OnboardingPageWidget(
                  assetName: AppIcons.mapPicture,
                  title: localization.activity_tutorial_discover_title,
                  description:
                      localization.activity_tutorial_discover_description,
                ),
                OnboardingPageWidget(
                  assetName: AppIcons.rockPicture,
                  title: localization.activity_tutorial_find_title,
                  description: localization.activity_tutorial_find_description,
                ),
                OnboardingPageWidget(
                  assetName: AppIcons.phonePicture,
                  title: localization.activity_tutorial_help_title,
                  description: localization.activity_tutorial_help_description,
                ),
              ],
              controller: controller,
            ),
            Positioned(
              bottom: 8,
              left: 24,
              right: 24,
              child: OnboardingBottomBar(
                controller: controller,
                currentIndex: currentIndex,
                length: 3,
                onLeftPressed: () {
                  setState(() {
                    currentIndex--;
                    controller.animateToPage(
                      currentIndex,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  });
                },
                onRightPressed: () {
                  setState(() {
                    if (currentIndex == 2) {
                      context
                          .read<SettingsBloc>()
                          .add(const SettingsEvent.onboardingVisited());
                      context.router.pop();
                    } else {
                      currentIndex++;
                      controller.animateToPage(
                        currentIndex,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
