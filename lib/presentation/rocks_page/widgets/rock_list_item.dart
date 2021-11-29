import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class RockListItem extends StatelessWidget {
  final int index;

  const RockListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationConfiguration.staggeredGrid(
      position: index,
      columnCount: index % 2,
      duration: const Duration(
        milliseconds: 500,
      ),
      child: SlideAnimation(
        verticalOffset: 100,
        child: FadeInAnimation(
          child: Container(
            height: 188,
            margin: EdgeInsets.only(
              left: index % 2 == 0 ? 16 : 8,
              right: index % 2 == 0 ? 8 : 16,
              bottom: 16.0,
            ),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
