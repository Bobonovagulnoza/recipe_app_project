// import 'package:recipe/core/client.dart';
// import 'package:recipe/data/models/community_recipe_model.dart';
// import 'package:recipe/data/models/recipe_model.dart';
//
// import '../../category_detail/data/models/recipe_model.dart';
// import '../../recipe_detail/data/models/recipe_detail_model.dart';
// import '../models/recipe_detail_model.dart';
//
// class RecipeRepository {
//   RecipeRepository({required this.client});
//
//   final ApiClient client;
//
//   Map<int, List<RecipeModel>> recipesByCategory = {};
//   RecipeDetailModel? recipe;
//
//   List<CommunityRecipeModel> communityRecipes = [];
//
//
//   Future<List<RecipeModel>> fetchRecipesByCategory(int categoryId) async {
//     if (recipesByCategory.containsKey(categoryId) && recipesByCategory[categoryId] != null) {
//       return recipesByCategory[categoryId]!;
//     }
//
//     var rawRecipes = await client.fetchRecipesByCategory(categoryId);
//     final recipes = rawRecipes.map((recipe) => RecipeModel.fromJson(recipe)).toList();
//     recipesByCategory[categoryId] = recipes;
//     return recipes;
//   }
//
//   Future<RecipeDetailModel> fetchRecipeById(int recipeId) async {
//     final rawRecipe = await client.fetchRecipeById(recipeId);
//     recipe = RecipeDetailModel.fromJson(rawRecipe);
//     return recipe!;
//   }
//
//   Future<RecipeModel> fetchTrendingRecipe() async {
//     var rawRecipe = await client.fetchTrendingRecipe();
//     return RecipeModel.fromJson(rawRecipe);
//   }
//
//
//
//   Future<List<CommunityRecipeModel>> fetchCommunityRecipes({required String orderBy, required bool descending}) async {
//     final rawRecipes = await client.fetchCommunityRecipes(orderBy: orderBy, descending: descending);
//     communityRecipes = rawRecipes.map((recipe) => CommunityRecipeModel.fromJson(recipe)).toList();
//     return communityRecipes;
//   }
//
//   Future<List<RecipeModel>> fetchRecentlyAddedRecipes({int? limit}) async {
//     final rawRecipes = await client.fetchRecentlyAddedRecipes(limit: limit);
//     recentlyAddedRecipes = rawRecipes.map((recipe) => RecipeModel.fromJson(recipe)).toList();
//     return recentlyAddedRecipes;
//   }
// }
