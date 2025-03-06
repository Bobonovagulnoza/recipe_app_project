import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../data/models/recipe_model.dart';

class RecipeItemDescription extends StatelessWidget {
  const RecipeItemDescription({
    super.key,
    required this.recipe,
  });

  final RecipeModel recipe;

  @override
  Widget build(BuildContext context) {
    return Text(
      recipe.description,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: AppColors.beigeColor,
        fontSize: 13,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
