import 'package:flutter/material.dart';

class RockListItem extends StatelessWidget {
  final int index;

  const RockListItem({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
