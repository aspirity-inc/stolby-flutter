import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:stolby_flutter/application/map/map_bloc.dart';
import 'package:stolby_flutter/application/map/map_control/map_control_bloc.dart';
import 'package:stolby_flutter/presentation/routing/router.gr.dart';

class RockCoordinates extends StatelessWidget {
  final int id;
  final double latitude;
  final double longitude;
  final String localizedName;

  const RockCoordinates({
    required this.id,
    required this.latitude,
    required this.longitude,
    required this.localizedName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColorDark;

    return InkWell(
      onTap: () => _handleTap(context),
      child: Column(
        children: [
          Icon(
            Icons.location_pin,
            size: 36,
            color: color,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            '$latitude,',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: color.withOpacity(0.6),
              decoration: TextDecoration.underline,
            ),
          ),
          Text(
            '$longitude',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: color.withOpacity(0.6),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  void _handleTap(BuildContext context) {
    final rock = context.read<MapBloc>().state.rocks.firstWhere(
          (r) => r.id == id,
        );
    context.read<MapControlBloc>().add(MapControlEvent.rockClicked(rock));
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
  }
}
