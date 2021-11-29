import 'package:flutter/material.dart';

class RockListSearchField extends StatelessWidget {
  const RockListSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFEAEAEA),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: const [
          Text("Search was not been implemented"),
          Expanded(
            child: SizedBox(),
          ),
          Icon(
            Icons.search,
            color: Colors.black,
            size: 24,
          ),
        ],
      ),
    );
  }
}
