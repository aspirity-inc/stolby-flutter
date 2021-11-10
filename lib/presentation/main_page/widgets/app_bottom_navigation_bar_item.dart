import 'package:flutter/material.dart';

class AppBottomNavigationBarItem extends StatelessWidget {
  final String label;
  final bool selected;
  final IconData icon;

  const AppBottomNavigationBarItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return selected
        ? SizedBox(
            height: 80,
            width: 112,
            child: Stack(
              children: [
                Positioned(
                  bottom: 8.0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 64,
                    width: 64,
                    decoration: const BoxDecoration(
                      color: Color(0xFF009688),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8.0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.all(16),
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.25),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          )
        : SizedBox(
            width: 112,
            height: 80,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
              ],
            ),
          );
  }
}
