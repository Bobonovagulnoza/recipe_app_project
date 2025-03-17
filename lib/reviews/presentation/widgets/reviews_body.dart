// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import '../../../core/utils/app_colors.dart';
// // class FoodInfo extends StatelessWidget {
// //   const FoodInfo({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       padding: const EdgeInsets.all(16.0),
// //       decoration: BoxDecoration(
// //         color: Colors.redAccent,
// //         borderRadius: BorderRadius.circular(12),
// //       ),
// //       child: Column(
// //         children: [
// //           Row(
// //             children: [
// //               ClipRRect(
// //                 borderRadius: BorderRadius.circular(12.0),
// //                 child: Padding(
// //                   padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
// //                   child: Image.asset(
// //                     'assets/images/seafood.png',
// //                     height: 163,
// //                     width: 162,
// //                     fit: BoxFit.cover,
// //                   ),
// //                 ),
// //               ),
// //               SizedBox(width: 16),
// //               Expanded(
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text(
// //                       'Chicken Burger',
// //                       style: TextStyle(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                           color: Colors.white),
// //                     ),
// //                     SizedBox(height: 4),
// //                     Row(
// //                       children: [
// //
// //                         // yulduzduzchalar
// //                         Text(
// //                           "456 Reviews",
// //                           style: TextStyle(
// //                               color:Colors.white,
// //                               fontSize: 11,
// //                               fontWeight: FontWeight.w600),
// //                         ),
// //                       ],
// //                     ),
// //                     SizedBox(height: 4),
// //                     Row(
// //                       children: [
// //                         ClipRRect(
// //                           borderRadius: BorderRadius.circular(30),
// //                           child: Image.asset(
// //                             'assets/images/ch1.png',
// //                             height:45,
// //                             width: 45,
// //                             fit: BoxFit.cover,
// //                           ),
// //                         ),
// //                         SizedBox(width:3,),
// //                         Text(
// //                           '@Andrew-Mar \nAndrew Martinez - Chef',
// //                           style: TextStyle(fontSize:13, color: Colors.white),
// //                         ),
// //                       ],
// //                     ),
// //                     SizedBox(height: 10,),
// //                     ClipRRect(
// //                       borderRadius: BorderRadius.circular(20),
// //                       child: Container(
// //                         height: 23,
// //                         width: 130,
// //                         color: Colors.white,
// //                         child: Center(
// //                           child: Text(
// //                             "Add Reviews",
// //                             style: TextStyle(
// //                                 color:AppColors.redPinkMain,
// //                                 fontSize: 15,
// //                                 fontWeight: FontWeight.w600),
// //                           ),
// //                         ),
// //                       ),
// //                     )
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //           SizedBox(height: 10),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app_project1/reviews/presentation/widgets/recipe_text_buttom_container.dart';

import 'package:recipe_app_project1/reviews/presentation/widgets/reviews_appbar.dart';

import '../../../core/utils/app_colors.dart';
import '../../data/models/recipe_review_user_model.dart';

import '../../../core/utils/app_colors.dart';
import '../../data/models/recipe_review_model.dart';
import '../../data/models/recipe_review_user_model.dart';
class ReviewsRecipeBody extends StatelessWidget {
  const ReviewsRecipeBody({
    super.key,
    required this.recipe,
  });

  final UserModelInRecipe recipe;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff1c0f0d),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(
                     recipe.profilePhoto,
                    height: 35,
                    width: 35,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 8,),
                Text(
                  recipe.username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold, color: AppColors.redPinkMain,),
                ),
                SizedBox(width: 130,),

              ],
            ),
          ],
        ),
      ),
    );
  }}


