import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recipe_app_project1/reviews/presentation/widgets/recipe_text_buttom_container.dart';
import 'package:recipe_app_project1/reviews/presentation/widgets/review_card.dart';
import 'package:recipe_app_project1/reviews/presentation/widgets/reviews_appbar.dart';

import '../../../core/utils/app_colors.dart';
import '../../data/models/recipe_review_model.dart';
class ReviewsRecipeItem extends StatelessWidget {
  const ReviewsRecipeItem({
    super.key,
    required this.recipe,
  });

  final ReviewsRecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 224.h,
      padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 30.h),
      decoration: BoxDecoration(
        color: AppColors.redPinkMain,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        spacing: 15.w,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: CachedNetworkImage(
              imageUrl: recipe.image,
              width: 150
                  .w,
              height: 164.h,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            spacing: 8,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recipe.title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ReviewsRecipeRatingAndReviews(
                rating: recipe.rating,
                reviews: recipe.reviewsCount,
              ),
              ReviewsRecipeItemUser(user: recipe.user),
              RecipeTextButtonContainer(
                text: "Add Review",
                fontSize: 15.spMin,
                textColor: AppColors.redPinkMain,
                containerColor: Colors.white,
                containerWidth: 126.w,
                containerHeight: 24.h,
                containerPaddingH: 10,
                callback: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
