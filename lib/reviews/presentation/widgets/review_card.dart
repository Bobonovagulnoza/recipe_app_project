// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../../core/utils/app_colors.dart';
//
// class ReviewCard extends StatelessWidget {
//   final String username;
//   final String timeAgo, text;
//   final String photo;
//   final int rating;
//
//   const ReviewCard(
//       {super.key,
//         required this.username,
//         required this.timeAgo,
//         required this.rating,
//         required this.photo,
//         required this.text,
//       });
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Color(0xff1c0f0d),
//       margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(30),
//                   child: Image.asset(
//                     photo,
//                     height: 35,
//                     width: 35,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 SizedBox(width: 8,),
//                 Text(
//                   username,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, color:AppColors.redPinkMain,),
//                 ),
//                 SizedBox(width: 130,),
//                 Text(
//                   timeAgo,
//                   style: const TextStyle(color: Color(0xffec888d)),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8),
//             Text(
//               text,
//               style: const TextStyle(
//                 color: Colors.white,
//                 fontSize: 12,
//                 fontWeight: FontWeight.w300,
//               ),
//             ),
//             const SizedBox(height: 8),
//             Row(
//               children: List.generate(
//                 5,
//                     (index) => Icon(
//                   index < rating ? Icons.star : Icons.star_border,
//                   color: Colors.amber,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/recipe_review_user_model.dart';
class ReviewsRecipeItemUser extends StatelessWidget {
  const ReviewsRecipeItemUser({
    super.key,
    required this.user,
  });

  final UserModelInRecipe user;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(17.w),
          child: CachedNetworkImage(
            imageUrl: user.profilePhoto,
            width: 34.w,
            height: 34.h,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "@${user.username}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            Text(
              "${user.firstName} ${user.lastName}",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: "League Spartan",
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
