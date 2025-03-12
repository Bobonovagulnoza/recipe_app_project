import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecipeCommunityBottomIcon extends StatelessWidget {
  const RecipeCommunityBottomIcon({super.key, required this.onTap, required this.icon});

  final VoidCallback onTap;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onTap,
        icon: SvgPicture.asset(
          icon,
          width: 25,
          height: 25,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
          ),
        ));
  }
}
