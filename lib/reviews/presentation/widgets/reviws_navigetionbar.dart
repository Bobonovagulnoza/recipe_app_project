import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/utils/app_colors.dart';
class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 281,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.redPinkMain,
              borderRadius: BorderRadius.circular(33),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/icons/home.svg"),
                SvgPicture.asset("assets/icons/community.svg"),
                SvgPicture.asset("assets/icons/categories.svg"),
                SvgPicture.asset("assets/icons/profile.svg"),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}