import 'package:auto_route/auto_route.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:stolby_flutter/presentation/pages/main_page/widgets/app_bottom_navigation_bar_item.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';

class MainPageNavigationBar extends StatefulWidget implements AutoRouteWrapper {
  const MainPageNavigationBar({Key? key}) : super(key: key);

  @override
  State<MainPageNavigationBar> createState() => _MainPageNavigationBarState();

  @override
  Widget wrappedRoute(BuildContext context) => this;
}

class _MainPageNavigationBarState extends State<MainPageNavigationBar> {
  int currentIndex = 0;
  final List<PageRouteInfo> routes = [
    MapRoute(),
    const RocksRoute(),
    const SettingsRoute(),
  ];

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return SafeArea(
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          currentIndex: currentIndex,
          elevation: 0,
          selectedItemColor: Colors.white,
          showUnselectedLabels: false,
          selectedLabelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          items: [
            BottomNavigationBarItem(
              label: localization?.appbar_title_map,
              icon: AppBottomNavigationBarItem(
                selected: currentIndex == 0,
                icon: Icons.map,
              ),
            ),
            BottomNavigationBarItem(
              label: localization?.appbar_title_rocks,
              icon: AppBottomNavigationBarItem(
                selected: currentIndex == 1,
                icon: CommunityMaterialIcons.image_filter_hdr,
              ),
            ),
            BottomNavigationBarItem(
              label: localization?.appbar_title_settings,
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
      ),
    );
  }
}
