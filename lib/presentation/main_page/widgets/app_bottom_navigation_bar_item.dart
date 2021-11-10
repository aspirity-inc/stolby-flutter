import 'package:flutter/material.dart';

class AppBottomNavigationBarItem extends StatelessWidget {
  final IconData icon;
  final bool selected;
  const AppBottomNavigationBarItem({
    Key? key,
    required this.selected,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 112,
      height: 64,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        child: Stack(
          children: [
            Center(
              child: AnimatedContainer(
                height: selected ? 64 : 0,
                width: selected ? 64 : 0,
                decoration: BoxDecoration(
                  color: Color(0xFF009688),
                  shape: BoxShape.circle,
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ),
            Center(
              child: AnimatedContainer(
                height: selected ? 48 : 0,
                width: selected ? 48 : 0,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ),
            selected
                ? Center(
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 24,
                    ),
                  )
                : Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Icon(
                      icon,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
