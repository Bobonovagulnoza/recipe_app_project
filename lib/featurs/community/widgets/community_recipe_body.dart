import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../common/widgets/recipe_icon_button_container.dart';
import '../../../common/widgets/recipe_rating.dart';
import '../../../common/widgets/recipe_time.dart';
import '../../../core/routing/routes.dart';
import '../../../core/utils/colors.dart';
import '../../../data/models/recipe/community_recipe_model.dart';
import '../../recipe_detail/widgets/recipe_reviews.dart';

class CommunityRecipeBody extends StatelessWidget {
  const CommunityRecipeBody({
    super.key,
    required this.recipe,
  });

  final CommunityRecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(Routes.getRecipeDetail(recipe.id)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Column(
          children: [
            Stack(
              children: [
                CachedNetworkImage(
                  imageUrl: recipe.image,
                  width: double.infinity,
                  height: 173.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 10,
                  right: 8,
                  child: RecipeIconButtonContainer(
                    image: 'assets/icons/heart.svg',
                    callback: () {},
                    iconWidth: 16,
                    iconHeight: 15,
                  ),
                ),
              ],
            ),
            Container(
              height: 78.h,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 3.h),
              decoration: BoxDecoration(
                color: AppColors.redPinkMain,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        recipe.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 20),
                      RecipeRating(
                        rating: recipe.rating,
                        textColor: Colors.white,
                        iconColor: Colors.white,
                        swap: true,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 6,
                    children: [
                      Expanded(
                        child: Text(
                          recipe.description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "League Spartan",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w300,
                            height: 1.1,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RecipeTime(
                            timeRequired: recipe.timeRequired,
                            color: Colors.white,
                          ),
                          RecipeReviews(
                            reviews: recipe.reviewsCount,
                            swap: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
