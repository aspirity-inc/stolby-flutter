import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:community_material_icon/community_material_icon.dart';
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
  final List<PageRouteInfo> routes = const [
    MapRoute(),
    RocksRoute(),
    SettingsRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return SafeArea(
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Colors.white,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),
        items: [
          BottomNavigationBarItem(
            label: localization.appbar_title_map,
            icon: AppBottomNavigationBarItem(
              selected: currentIndex == 0,
              icon: Icons.map,
            ),
          ),
          BottomNavigationBarItem(
            label: localization.appbar_title_rocks,
            icon: AppBottomNavigationBarItem(
              selected: currentIndex == 1,
              icon: CommunityMaterialIcons.image_filter_hdr,
            ),
          ),
          BottomNavigationBarItem(
            label: localization.appbar_title_settings,
            icon: AppBottomNavigationBarItem(
              selected: currentIndex == 2,
              icon: Icons.settings,
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
