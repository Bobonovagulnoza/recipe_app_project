import 'package:flutter/material.dart';
import '../../../common/widgets/recipe_bottom_navigation_bar.dart';
import '../../../core/utils/colors.dart';
import '../../category_detail/widgets/recipe_item/recipe_item.dart';
import '../widgets/trending_recipe_list.dart';
import '../widgets/trending_recipes_appbar.dart';
import '../widgets/trending_recipes_body.dart';

class TrendingRecipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColors.backgroundColor,

      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MostViewedTodaySection(),
            SizedBox(height: 10),
            RecipeList(),
          ],
        ),
      ),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}






