import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/application/detailed_rock_bloc/detailed_rock_bloc.dart';
import 'package:stolby_flutter/application/location/location_bloc.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/add_marker_button.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/rock_image.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/rock_info_row.dart';
import 'package:stolby_flutter/presentation/pages/detailed_rock_page/widgets/rock_text.dart';
import 'package:stolby_flutter/presentation/widgets/detailed_rock_appbar.dart';

class DetailedRockPageContent extends StatelessWidget {
  const DetailedRockPageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LocationBloc, LocationState>(
      listener: (context, locationState) {
        if (locationState.userLocation.isSome()) {
          locationState.userLocation.fold(
            () => null,
            (l) => context.read<DetailedRockBloc>().add(
                  DetailedRockEvent.locationChanged(
                    location: LatLng(l.latitude, l.longitude),
                  ),
                ),
          );
        }
      },
      child: BlocBuilder<DetailedRockBloc, DetailedRockState>(
        builder: (context, state) {
          return Scaffold(
            appBar: DetailedRockAppbar(
              localizedName: state.rock.fold(
                () => null,
                (a) => a.localizedName,
              ),
            ),
            body: state.rock.fold(
              () => const SizedBox(),
              (rock) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 16.0,
                ),
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    RockImage(
                      rock: rock,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    RockInfoRow(
                      rock: rock,
                      distance: state.distance.fold(() => null, (a) => a),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    RockText(
                      shortInfo: rock.shortInfo,
                      fullInfo: rock.fullInfo,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    AddMarkerButton(
                      rock: rock,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
