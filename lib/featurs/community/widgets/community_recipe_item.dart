import 'package:flutter/material.dart';
import '../../../data/models/recipe/community_recipe_model.dart';
import 'community_recipe_body.dart';
import 'community_recipe_chef.dart';

class CommunityRecipeItem extends StatelessWidget {
  const CommunityRecipeItem({
    super.key,
    required this.recipe,
  });

  final CommunityRecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        CommunityRecipeChef(recipe: recipe),
        CommunityRecipeBody(recipe: recipe),
      ],
    );
  }
}
