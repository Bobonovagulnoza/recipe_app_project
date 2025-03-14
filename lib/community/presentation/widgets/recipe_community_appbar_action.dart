import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_colors.dart';

class RecipeCommunityAppBarAction extends StatelessWidget {
  const RecipeCommunityAppBarAction({super.key, required this.child, required this.onTap});

  final String child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: AppColors.pink,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Center(
          child: SvgPicture.asset(
            child,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColors.pinkSub,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
