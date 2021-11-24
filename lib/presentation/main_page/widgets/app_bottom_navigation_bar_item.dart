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
      height: 80,
      child: AnimatedContainer(
        margin: selected
            ? EdgeInsets.zero
            : const EdgeInsets.only(
                top: 48,
              ),
        height: selected ? 64 : 24,
        width: selected ? 64 : 24,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        duration: const Duration(milliseconds: 64),
        child: Stack(
          children: [
            Center(
              child: AnimatedContainer(
                height: selected ? 48 : 0,
                width: selected ? 48 : 0,
                decoration: const BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.circle,
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ),
            Center(
              child: AnimatedContainer(
                height: selected ? 32 : 0,
                width: selected ? 32 : 0,
                decoration: const BoxDecoration(
                  color: Colors.white24,
                  shape: BoxShape.circle,
                ),
                duration: const Duration(milliseconds: 300),
              ),
            ),
            Center(
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
