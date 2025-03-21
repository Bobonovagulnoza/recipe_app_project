import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app_project1/core/utils/colors.dart';

import '../../category_detail/widgets/recipe_item/recipe_item.dart';
import 'man.dart';

class RecipeList extends StatelessWidget {
  final List<TrendingRecipeModel> recipes = [
    TrendingRecipeModel(title: "Chicken Curry", description: "Savor the aromatic Chicken Curry\na rich blend of spices...",name:"By Chef Josh Ryan",time:"45min",rating:"4",image: "assets/images/curry.png"),
    TrendingRecipeModel(title: "Beef Steak", description: "Indulge in a flavorful Chicken\n Burger: seasoned chicken...",name:"By Chef Andrew", time:"15min",rating:"5",image: "assets/images/burger.png"),
    TrendingRecipeModel(title: "Pasta Carbonara", description: "Indulge in a flavorful Chicken\n Burger: seasoned chicken...",name:"By Chef Andrew", time:"20min",rating:"5",image: "assets/images/curry.png"),
    TrendingRecipeModel(title: "Vegetable Salad", description: "Indulge in a flavorful Chicken\n Burger: seasoned chicken...", name:"By Chef Andrew",time:"27min",rating:"4",image: "assets/images/burger.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(recipe: recipes[index]);
        },
      ),
    );
  }
}

class TrendingRecipeModel {
  final String title,time,rating;
  final String description,name;
  final String image;

  TrendingRecipeModel({
    required this.title,
    required this.description,
    required this.name,
    required this.image,
    required this.rating,
    required this.time,
  });
}

class RecipeCard extends StatelessWidget {
  final TrendingRecipeModel recipe;

  RecipeCard({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset(
              recipe.image,
              width: 151,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width:0),
          Container(
            width: 207,
            height: 122,
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recipe.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  recipe.description,
                  style: TextStyle(fontSize: 12, color: Colors.black),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Text(
                  recipe.name,
                  style: TextStyle(fontSize: 12, color: AppColors.redPinkMain),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      recipe.time,
                      style: TextStyle(fontSize: 12, color: AppColors.redPinkMain),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      recipe.rating,
                      style: TextStyle(fontSize: 12, color: AppColors.redPinkMain),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}