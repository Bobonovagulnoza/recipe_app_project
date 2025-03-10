import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_colors.dart';

class RecipeRating extends StatelessWidget {
  const RecipeRating({
    super.key, required this.rating,  this.color=AppColors.pinkSub,

  });

  final num rating;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$rating",
          style: TextStyle(
            color: color,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w400,
            fontSize: 12,
          ),
        ),
        SizedBox(
          width: 3,
        ),
        SvgPicture.asset(
          "assets/svg/star.svg",
          width: 10,
          height: 10,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        )
      ],
    );
  }
}
