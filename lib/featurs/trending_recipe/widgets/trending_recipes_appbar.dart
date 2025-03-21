import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: AppColors.backgroundColor,
        leading: Padding(
          padding: EdgeInsets.all(15.0),
          child: SvgPicture.asset(
            'assets/icons/vector.svg',
            width: 24,
            height: 14,
          ),
        ),
        title: Center(
          child: Text(
            'Trending Recipes',
            style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: AppColors.pink,
            radius: 14,
            child: SvgPicture.asset(
              'assets/icons/share.svg',
              colorFilter: ColorFilter.mode(AppColors.redPinkMain, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: AppColors.pink,
            radius: 14,
            child: SvgPicture.asset(
              'assets/icons/three_dots.svg',
              colorFilter: ColorFilter.mode(AppColors.redPinkMain, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 10),
        ],


    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}