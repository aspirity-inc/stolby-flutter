import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:stolby_flutter/application/location/location_bloc.dart';
import 'package:stolby_flutter/application/rock_list/rock_list_bloc.dart';
import 'package:stolby_flutter/presentation/pages/rocks_page/widgets/rock_list_item.dart';
import 'package:stolby_flutter/presentation/pages/rocks_page/widgets/rock_list_search_field.dart';

class RocksPageContent extends StatelessWidget {
  const RocksPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    return BlocBuilder<RockListBloc, RockListState>(
      builder: (context, state) => Scaffold(
        body: SafeArea(
          child: BlocBuilder<LocationBloc, LocationState>(
            builder: (context, locationState) => CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const RockListSearchField(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: Text(
                          localization?.appbar_title_rocks ?? '',
                          style: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                AnimationLimiter(
                  child: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.87,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => RockListItem(
                        index: index,
                        item: state.rocksToShow[index],
                        location: locationState.userLocation
                            .fold(() => null, (a) => a),
                      ),
                      childCount: state.rocksToShow.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*

 */
