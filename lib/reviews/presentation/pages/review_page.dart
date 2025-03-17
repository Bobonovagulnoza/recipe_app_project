import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../community/presentation/widgets/community_bootom_navigationbar.dart';
import '../../../core/utils/app_colors.dart';
import '../manager/reviews_bloc.dart';
import '../manager/reviews_state.dart';
import '../widgets/recipe_review_comment.dart';
import '../widgets/reviews_recipe_item.dart';


class ReviewView extends StatelessWidget {
  const ReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 36),
          child: SvgPicture.asset("assets/icons/back-arrow.svg"),
        ),
        title: Text(
          "Review",
          style: TextStyle(
            color: AppColors.redPinkMain,
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
          ),
        ),
      ),
      extendBody: true,
      body: BlocBuilder<RecipeReviewBloc, ReviewsState>(
          builder: (context, state) {
            return switch (state.status) {
              ReviewsStatus.loading => Center(
                child: CupertinoActivityIndicator(),
              ),
              ReviewsStatus.error => Center(
                child: Text("Something went wrong..."),
              ),
              ReviewsStatus.idle => Column(
                children: [
                  ReviewsRecipeItem(
                    recipe: state.recipeModel!,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.recipeComments!.length,
                      itemBuilder: (context, index) {
                        final comments = state.recipeComments![index];
                        return RecipeReviewCommentsItem(
                            profileImage: comments.user.profilePhoto,
                            comment: comments.comment,
                            time: comments.created,
                            rating: comments.rating,
                            username: comments.user.username);
                      },
                    ),
                  ),
                ],
              ),
            };
          }),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}


