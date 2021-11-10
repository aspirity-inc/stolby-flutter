import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:stolby_flutter/presentation/main_page/widgets/app_bottom_navigation_bar_item.dart';

class MainPageNavigationBar extends StatefulWidget implements AutoRouteWrapper {
  @override
  State<MainPageNavigationBar> createState() => _MainPageNavigationBarState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _MainPageNavigationBarState extends State<MainPageNavigationBar> {
  int currentIndex = 0;
  final List<IconData> items = [Icons.map, Icons.add, Icons.settings];
  final List<PageRouteInfo> routes = const [
    MapRoute(),
    RocksRoute(),
    SettingsRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final List<String> labels = [
      localization.appbar_title_map,
      localization.appbar_title_rocks,
      localization.appbar_title_settings,
    ];

    return SafeArea(
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: '',
            icon: AppBottomNavigationBarItem(
              label: labels[0],
              icon: items[0],
              selected: currentIndex == 0,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: AppBottomNavigationBarItem(
              label: labels[1],
              icon: items[1],
              selected: currentIndex == 1,
            ),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: AppBottomNavigationBarItem(
              label: labels[2],
              icon: items[2],
              selected: currentIndex == 2,
            ),
          ),
        ],
        onTap: (index) => setState(
          () {
            currentIndex = index;
            context.navigateTo(routes[index]);
          },
        ),
      ),
    );
  }
}
