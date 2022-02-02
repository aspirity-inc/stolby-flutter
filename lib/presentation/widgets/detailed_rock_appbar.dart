import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class DetailedRockAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final String? localizedName;

  const DetailedRockAppbar({
    Key? key,
    required this.localizedName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.onBackground;

    return AppBar(
      leading: IconButton(
        onPressed: () => context.router.pop(),
        icon: Icon(
          Icons.arrow_back_sharp,
          size: 24,
          color: color,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        localizedName ?? '',
        style: TextStyle(
          color: color,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
