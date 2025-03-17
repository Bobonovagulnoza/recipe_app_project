// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:recipe_app_project1/core/utils/app_colors.dart';
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       surfaceTintColor: Colors.transparent,
//       backgroundColor: AppColors.backgroundColor,
//       title: Text(
//         'Reviews',
//         style: TextStyle(
//           color: AppColors.redPinkMain,
//           fontSize: 20,
//           fontWeight: FontWeight.w600,),
//       ),
//       leading: Container(
//         padding: EdgeInsets.all(12),
//         child: SvgPicture.asset(
//           "assets/icons/vector.svg",
//           width: 25,
//           height: 10,
//         ),
//       ),
//       centerTitle: true,
//       // backgroundColor: Colors.redAccent,
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
//
//
//



import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ReviewsRecipeRatingAndReviews extends StatelessWidget {
  const ReviewsRecipeRatingAndReviews({
    super.key,
    required this.rating,
    required this.reviews,
  });

  final num rating;
  final int reviews;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        Row(
          spacing: 3,
          children: List.generate(
            5,
                (index) {
              if (index + 1 <= rating.toInt()) {
                return SvgPicture.asset('assets/icons/star-filled.svg');
              } else {
                return SvgPicture.asset('assets/icons/star-empty.svg');
              }
            },
          ),
        ),
        Text(
          "($reviews Review${reviews != 1 ? 's' : ''})",
          style: TextStyle(
            color: Colors.white,
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}
