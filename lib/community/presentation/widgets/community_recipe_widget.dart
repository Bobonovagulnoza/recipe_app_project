import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app_project1/core/routing/routes.dart';
import '../../../core/utils/app_colors.dart';
import '../../data/models/recipe_community_model.dart';
import '../manager/recipe_community_view_model.dart';
import 'recipe_community_recipe_details.dart';
import 'recipe_community_recipe_image.dart';
import 'recipe_community_recipe_user.dart';

class RecipeWidgetCommunity extends StatelessWidget {
  const RecipeWidgetCommunity(
      {super.key, required this.created, required this.model, required this.index});

  final RecipeCommunityModel model;

  final String created;
  final int index;

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RecipeCommunityTopViewModel>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        RecipeCommunityUser(model: model, created: created),
        Container(
          height: 251,
          width: double.infinity,
          decoration: BoxDecoration(
              color: AppColors.redPinkMain,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            spacing: 4,
            children: [
              GestureDetector(
                  onTap: () => context.go('${Routes.recipe_detail}/${vm.communityRecipes[index].id}'),
                  child: RecipeCommunityImage(model: model)),
              RecipeCommunityDetails(model: model)
            ],
          ),
        ),
        Divider(
          height: 1,
          color: AppColors.pinkSub,
        )
      ],
    );
  }
}
