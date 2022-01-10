import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';
import 'package:flutter/material.dart';

class RockCoordinates extends StatelessWidget {
  final int id;
  final double latitude;
  final double longitude;
  final String localizedName;

  const RockCoordinates({
    Key? key,
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.localizedName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;

    return InkWell(
      onTap: () {
        context.read<MapBloc>().add(MapEvent.rockClicked(id));
        context.replaceRoute(
          MainRoute(
            children: [
              MapRoute(
                initialCoordinates: LatLng(
                  latitude,
                  longitude,
                ),
              ),
            ],
          ),
        );
      },
      child: Column(
        children: [
          Icon(
            CupertinoIcons.location,
            size: 36,
            color: Theme.of(context).colorScheme.onBackground,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '$latitude,',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: color,
              decoration: TextDecoration.underline,
            ),
          ),
          Text(
            '$longitude',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: color,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
